import re
import argparse
from pathlib import Path
from spice_parser import SpiceParser, Subckt, Device

FILTER_PATTERNS = [
    r'sky130_fd_sc_\w+__decap_\d+',
    r'sky130_fd_sc_\w+__tapvpwrvgnd_\d+', 
    r'sky130_fd_sc_\w+__fill_\d+',
    r'sky130_fd_sc_\w+__diode_\d+',
    r'sky130_fd_sc_\w+__conb_\d+',
    r'sky130_ef_sc_\w+__fakediode_\d+',
]

def should_filter(name: str) -> bool:
    for pat in FILTER_PATTERNS:
        if re.search(pat, name, re.IGNORECASE):
            return True
    return False

def filter_subckts(parser: SpiceParser):
    """Remove subckts matching the filter patterns, and remove instances of them."""
    # Remove subckts entirely
    parser.subckts = {name: sub for name, sub in parser.subckts.items() if not should_filter(name)}
    
    # Remove instances of filtered subckts from all remaining subckts and top level
    for sub in list(parser.subckts.values()) + [parser.top_level]:
        sub.instances = [inst for inst in sub.instances if not should_filter(inst.subckt_name)]

def merge_parallel_devices(sub: Subckt):
    """Merge parallel identical devices in a subcircuit to reduce graph size."""
    # A simplified implementation: if two MOSFETs have the same D,G,S,B, and model, merge them.
    # In a full implementation, you'd add their W/L values or just keep one for topological matching.
    # We only care about connectivity for DCI.
    unique_devices = {}
    for dev in sub.devices:
        is_fet = 'sky130_fd_pr__nfet' in dev.model or 'sky130_fd_pr__pfet' in dev.model
        if is_fet or dev.name.startswith('M'):
            # nodes are [d, g, s, b]
            # to be truly parallel, they need same nodes and model
            # Note: D and S are interchangeable in MOSFETs, so we can sort them
            if len(dev.nodes) >= 4:
                d, g, s, b = dev.nodes[0], dev.nodes[1], dev.nodes[2], dev.nodes[3]
                ds = tuple(sorted([d, s]))
                key = (ds, g, b, dev.model)
            elif len(dev.nodes) >= 3:
                d, g, s = dev.nodes[0], dev.nodes[1], dev.nodes[2]
                ds = tuple(sorted([d, s]))
                key = (ds, g, None, dev.model)
            else:
                key = (tuple(dev.nodes), dev.model)
                
            if key not in unique_devices:
                unique_devices[key] = dev
        else:
            # Just keep other devices as is for now
            unique_devices[dev.name] = dev
    
    sub.devices = list(unique_devices.values())

def flatten_subckt(sub: Subckt, all_subckts: dict, depth: int = 0) -> Subckt:
    """
    Recursively flattens a subckt: inlines all child instances into the parent,
    renaming internal nets to avoid collisions.
    Returns a new Subckt containing only devices (no instances).
    """
    if depth > 10:
        print(f"  Warning: max recursion depth hit for {sub.name}, skipping flatten")
        return sub

    flat_devices = list(sub.devices)

    for inst in sub.instances:
        child_def = all_subckts.get(inst.subckt_name)
        if child_def is None:
            # Unknown subckt — skip (might be a filtered cell or external)
            continue

        # Recursively flatten the child first
        flat_child = flatten_subckt(child_def, all_subckts, depth + 1)

        # Build net mapping: child port -> parent net (from instance node list)
        if len(flat_child.ports) != len(inst.nodes):
            # Port count mismatch — skip this instance
            print(f"  Warning: port count mismatch for {inst.name} ({inst.subckt_name}): "
                  f"{len(flat_child.ports)} ports vs {len(inst.nodes)} nodes")
            continue

        port_to_net = dict(zip(flat_child.ports, inst.nodes))

        # Clone devices from child, renaming nets
        prefix = f"{inst.name}/"
        for dev in flat_child.devices:
            new_nodes = []
            for node in dev.nodes:
                if node in port_to_net:
                    # Map port to parent net
                    new_nodes.append(port_to_net[node])
                else:
                    # Internal net — prefix to avoid collision
                    new_nodes.append(prefix + node)
            new_dev = Device(
                name=prefix + dev.name,
                nodes=new_nodes,
                model=dev.model,
                params=dict(dev.params)
            )
            flat_devices.append(new_dev)

    result = Subckt(sub.name, sub.ports)
    result.devices = flat_devices
    result.instances = []  # fully flattened
    return result

def flatten_mixed_subckts(parser: SpiceParser):
    """
    If a subckt contains both devices and instances, it's 'mixed'.
    Flatten all mixed subckts recursively.
    """
    changed = True
    passes = 0
    # The top level (or 'puzzle' specifically) shouldn't be flattened just because it has parasitic caps.
    while changed and passes < 5:
        changed = False
        passes += 1
        for name in list(parser.subckts.keys()):
            # Do not flatten the top-level module containing the actual design
            if name == "puzzle" or name == "TOP" or name == "adder_demo":
                continue
            sub = parser.subckts[name]
            if len(sub.devices) > 0 and len(sub.instances) > 0:
                print(f"  Flattening mixed subckt: {name} "
                      f"({len(sub.devices)} devs, {len(sub.instances)} insts)")
                parser.subckts[name] = flatten_subckt(sub, parser.subckts)
                changed = True


def process_spice(input_spice: str, output_spice: str):
    parser = SpiceParser()
    parser.parse_file(input_spice)
    
    print(f"Loaded {len(parser.subckts)} subckts.")
    filter_subckts(parser)
    print(f"After filtering: {len(parser.subckts)} subckts remain.")
    
    for name, sub in parser.subckts.items():
        merge_parallel_devices(sub)
        
    flatten_mixed_subckts(parser)
    
    with open(output_spice, 'w') as f:
        f.write(parser.dump())
    print(f"Wrote processed SPICE to {output_spice}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Post-process Magic extracted SPICE")
    parser.add_argument("input_spice", help="Input SPICE file")
    parser.add_argument("output_spice", help="Output SPICE file")
    
    args = parser.parse_args()
    process_spice(args.input_spice, args.output_spice)

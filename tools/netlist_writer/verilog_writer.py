import argparse
import sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).parent.parent / 'sne_extraction'))
from spice_parser import SpiceParser

def spice_to_verilog(spice_file: str, top_module: str, verilog_file: str, outputs=None):
    parser = SpiceParser()
    parser.parse_file(spice_file)
    
    if top_module not in parser.subckts:
        raise ValueError(f"Top module {top_module} not found in SPICE.")
        
    top = parser.subckts[top_module]
    
    # Default outputs heuristic: any port that ends in common output suffixes
    if outputs is None:
        outputs = {'S', 'success', 'out', 'Q'}
        # Also detect O[x] style
        for p in top.ports:
            if p.startswith('O') or p == 'success' or p == 'S':
                outputs.add(p)
    
    # Collect all ports, detect bus groups (e.g. O[0]..O[7] -> [7:0] O)
    import re as _re
    bus_members = {}   # basename -> list of (index, portname)
    scalar_ports = []
    skip_ports = set(["VPWR", "VGND", "VPB", "VNB"])
    for p in top.ports:
        if p in skip_ports:
            continue
        m = _re.match(r'^(\w+)\[(\d+)\]$', p)
        if m:
            bname, idx = m.group(1), int(m.group(2))
            bus_members.setdefault(bname, []).append((idx, p))
        else:
            scalar_ports.append(p)

    # Build bus declarations (collapsed)
    bus_decls = {}  # basename -> (max_idx, is_output)
    for bname, members in bus_members.items():
        indices = [idx for idx, _ in members]
        max_idx = max(indices)
        # Check if any member name (e.g. 'O[0]') or the basename ('O') is in outputs
        any_out = bname in outputs or any(p in outputs for _, p in members)
        bus_decls[bname] = (max_idx, any_out)
    
    # Port list in module header
    port_list = []
    seen_buses = set()
    for p in top.ports:
        if p in skip_ports:
            continue
        m = _re.match(r'^(\w+)\[(\d+)\]$', p)
        if m:
            bname = m.group(1)
            if bname not in seen_buses:
                port_list.append(bname)
                seen_buses.add(bname)
        else:
            port_list.append(p)

    with open(verilog_file, 'w') as f:
        f.write(f"module {top_module}_gate ({', '.join(port_list)});\n")
        
        # Scalar port declarations
        for port in scalar_ports:
            base = port.split('[')[0]
            if base in outputs or port in outputs:
                f.write(f"  output wire {port};\n")
            else:
                f.write(f"  input wire {port};\n")
        
        # Bus port declarations
        for bname, (max_idx, is_out) in bus_decls.items():
            direction = "output" if is_out else "input"
            f.write(f"  {direction} wire [{max_idx}:0] {bname};\n")
            
        # Declare internal wires
        internal_nets = set()
        for inst in top.instances:
            for node in inst.nodes:
                if node not in top.ports and node not in ["VPWR", "VGND", "VPB", "VNB"]:
                    # Sanitize net names (remove slashes, hashes)
                    safe_node = node.replace('/', '_').replace('#', '_')
                    internal_nets.add(safe_node)
                    
        for net in sorted(internal_nets):
            f.write(f"  wire {net};\n")
            
        f.write("\n")
        
        # Write instances
        for i, inst in enumerate(top.instances):
            cell_def = parser.subckts.get(inst.subckt_name)
            if not cell_def:
                print(f"Warning: Definition for {inst.subckt_name} not found.")
                continue
                
            safe_inst_name = inst.name.replace('/', '_').replace('#', '_')
            f.write(f"  {inst.subckt_name} {safe_inst_name} (\n")
            
            port_conns = []
            for port, node in zip(cell_def.ports, inst.nodes):
                if port in ["VPWR", "VGND", "VPB", "VNB"]:
                    # Skip power/ground pins in standard verilog since .lib doesn't have them
                    continue
                if port.startswith('a_'):
                    # Skip magic-promoted internal ports
                    continue
                safe_node = node.replace('/', '_').replace('#', '_')
                safe_port = port.replace('#', '_')
                port_conns.append(f"    .{safe_port}({safe_node})")
                
            f.write(",\n".join(port_conns))
            f.write("\n  );\n\n")
            
        f.write("endmodule\n")
        
if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("spice", help="Input SPICE file")
    parser.add_argument("top", help="Top module name")
    parser.add_argument("verilog", help="Output Verilog file")
    args = parser.parse_args()
    
    spice_to_verilog(args.spice, args.top, args.verilog)

import re
from typing import List, Dict, Any, Optional
from dataclasses import dataclass, field

@dataclass
class Device:
    name: str
    nodes: List[str]
    model: str
    params: Dict[str, str] = field(default_factory=dict)
    
@dataclass
class Instance:
    name: str
    nodes: List[str]
    subckt_name: str
    params: Dict[str, str] = field(default_factory=dict)

@dataclass
class Subckt:
    name: str
    ports: List[str]
    devices: List[Device] = field(default_factory=list)
    instances: List[Instance] = field(default_factory=list)

class SpiceParser:
    def __init__(self):
        self.subckts: Dict[str, Subckt] = {}
        self.top_level: Subckt = Subckt("TOP", [])
    
    def parse_file(self, filepath: str) -> None:
        with open(filepath, 'r') as f:
            lines = f.readlines()
        self.parse_lines(lines)
        
    def parse_lines(self, lines: List[str]) -> None:
        # handle line continuations (+)
        processed_lines = []
        for line in lines:
            line = line.strip()
            if not line or line.startswith('*'):
                continue
            if line.startswith('+'):
                if processed_lines:
                    processed_lines[-1] += ' ' + line[1:].strip()
            else:
                processed_lines.append(line)
                
        current_subckt = self.top_level
        
        for line in processed_lines:
            tokens = line.split()
            if not tokens:
                continue
                
            cmd = tokens[0].lower()
            
            if cmd == '.subckt':
                name = tokens[1]
                ports = tokens[2:]
                current_subckt = Subckt(name, ports)
                self.subckts[name] = current_subckt
                
            elif cmd == '.ends':
                current_subckt = self.top_level
                
            elif tokens[0].upper().startswith('M'):
                # MOSFET: Mname nd ng ns nb model l= w=
                name = tokens[0]
                # Try to separate nodes and model
                # Usually standard spice is: Mxxx nd ng ns nb model ...
                # Magic might output: M1 nd ng ns nb model ...
                # Let's assume 4 nodes + 1 model + params
                if len(tokens) >= 6:
                    nodes = tokens[1:5]
                    model = tokens[5]
                    params = self._parse_params(tokens[6:])
                    dev = Device(name, nodes, model, params)
                    current_subckt.devices.append(dev)
                    
            elif tokens[0].upper().startswith('X'):
                # Subckt instance OR SKY130 Primitive Device: Xname n1 n2 n3 subckt_name/model ...
                name = tokens[0]
                
                param_start_idx = len(tokens)
                for i, t in enumerate(tokens):
                    if '=' in t:
                        param_start_idx = i
                        break
                
                model_or_subckt = tokens[param_start_idx - 1]
                nodes = tokens[1:param_start_idx - 1]
                params = self._parse_params(tokens[param_start_idx:])
                
                # Check if it's a SKY130 primitive FET
                if 'sky130_fd_pr__nfet' in model_or_subckt or 'sky130_fd_pr__pfet' in model_or_subckt:
                    # Treat as Device
                    dev = Device(name, nodes, model_or_subckt, params)
                    current_subckt.devices.append(dev)
                else:
                    inst = Instance(name, nodes, model_or_subckt, params)
                    current_subckt.instances.append(inst)
                
            elif tokens[0].upper().startswith('C') or tokens[0].upper().startswith('R') or tokens[0].upper().startswith('D'):
                 # Capacitor, Resistor, Diode
                 name = tokens[0]
                 param_start_idx = len(tokens)
                 for i, t in enumerate(tokens):
                    if '=' in t:
                        param_start_idx = i
                        break
                 # Assumes last item before params is value/model
                 model_or_val = tokens[param_start_idx-1]
                 nodes = tokens[1:param_start_idx-1]
                 params = self._parse_params(tokens[param_start_idx:])
                 dev = Device(name, nodes, model_or_val, params)
                 current_subckt.devices.append(dev)
                 
    def _parse_params(self, param_tokens: List[str]) -> Dict[str, str]:
        params = {}
        for token in param_tokens:
            if '=' in token:
                k, v = token.split('=', 1)
                params[k.lower()] = v
        return params

    def dump(self) -> str:
        """Dump back to SPICE format (for debugging/verification)"""
        out = []
        for dev in self.top_level.devices:
            out.append(f"{dev.name} {' '.join(dev.nodes)} {dev.model} " + " ".join(f"{k}={v}" for k, v in dev.params.items()))
        for inst in self.top_level.instances:
            out.append(f"{inst.name} {' '.join(inst.nodes)} {inst.subckt_name} " + " ".join(f"{k}={v}" for k, v in inst.params.items()))
            
        for name, sub in self.subckts.items():
            out.append(f".subckt {name} {' '.join(sub.ports)}")
            for dev in sub.devices:
                out.append(f"  {dev.name} {' '.join(dev.nodes)} {dev.model} " + " ".join(f"{k}={v}" for k, v in dev.params.items()))
            for inst in sub.instances:
                out.append(f"  {inst.name} {' '.join(inst.nodes)} {inst.subckt_name} " + " ".join(f"{k}={v}" for k, v in inst.params.items()))
            out.append(".ends\n")
            
        return "\n".join(out)

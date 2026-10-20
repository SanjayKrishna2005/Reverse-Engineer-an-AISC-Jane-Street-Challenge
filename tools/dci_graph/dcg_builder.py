import networkx as nx
import sys
import os
from pathlib import Path

# Add sne_extraction to path to import SpiceParser
sys.path.append(str(Path(__file__).parent.parent / "sne_extraction"))
from spice_parser import Subckt
from dci import calculate_edge_weight

def build_dcg(sub: Subckt, use_beta: bool = False) -> nx.Graph:
    """
    Build a Digital Connection Graph (DCG) from a SPICE subcircuit.
    """
    G = nx.Graph()
    
    # Filter for MOSFETs only
    mosfets = [d for d in sub.devices if 'sky130_fd_pr__nfet' in d.model or 'sky130_fd_pr__pfet' in d.model or d.name.startswith('M')]
    
    # Add nodes
    for dev in mosfets:
        # Determine type (N/P) from model name. Heuristic based on SKY130 naming
        # or standard spice (nmos, pmos)
        mtype = 'NMOS' if 'n' in dev.model.lower() else 'PMOS' 
        G.add_node(dev.name, type=mtype, model=dev.model)
        
    # Calculate edges
    for i in range(len(mosfets)):
        for j in range(i + 1, len(mosfets)):
            dev1 = mosfets[i]
            dev2 = mosfets[j]
            
            # Nodes format: [drain, gate, source, bulk]
            if len(dev1.nodes) >= 4:
                terms1 = [(dev1.nodes[0], 'D'), (dev1.nodes[1], 'G'), (dev1.nodes[2], 'S'), (dev1.nodes[3], 'B')]
            else:
                 terms1 = [(dev1.nodes[0], 'D'), (dev1.nodes[1], 'G'), (dev1.nodes[2], 'S')]
                 
            if len(dev2.nodes) >= 4:
                terms2 = [(dev2.nodes[0], 'D'), (dev2.nodes[1], 'G'), (dev2.nodes[2], 'S'), (dev2.nodes[3], 'B')]
            else:
                 terms2 = [(dev2.nodes[0], 'D'), (dev2.nodes[1], 'G'), (dev2.nodes[2], 'S')]
                 
            weight = calculate_edge_weight(
                mtype, terms1, 
                mtype, terms2, 
                use_beta=use_beta
            )
            
            if weight > 0:
                G.add_edge(dev1.name, dev2.name, weight=weight)
                
    return G

import os
import sys
import json
import argparse
import networkx as nx
from pathlib import Path

# Add paths to sys.path
SCRIPT_DIR = Path(__file__).parent
PROJECT_ROOT = SCRIPT_DIR.parent
sys.path.append(str(PROJECT_ROOT / "tools" / "sne_extraction"))
sys.path.append(str(PROJECT_ROOT / "tools" / "dci_graph"))

from spice_parser import SpiceParser
from dcg_builder import build_dcg

def get_graph_hash(G: nx.Graph) -> str:
    """
    Computes a simplified hash for isomorphism class bucketing.
    In a full implementation, you'd use WL-hash or similar.
    Here we just use node counts and degree sequence.
    """
    num_nmos = sum(1 for _, d in G.nodes(data=True) if d.get('type') == 'NMOS')
    num_pmos = sum(1 for _, d in G.nodes(data=True) if d.get('type') == 'PMOS')
    deg_seq = tuple(sorted([d for n, d in G.degree()]))
    edge_weights = tuple(sorted([d['weight'] for u, v, d in G.edges(data=True)]))
    
    return f"N{num_nmos}P{num_pmos}_D{deg_seq}_W{edge_weights}"

def build_library(spice_dir: str, output_file: str):
    """
    Reads all reference SPICE files, builds DCGs, and deduplicates them.
    """
    spice_path = Path(spice_dir)
    parser = SpiceParser()
    
    # In SKY130, reference SPICE files often contain multiple subckts
    for spice_file in spice_path.glob("*.spice"):
        parser.parse_file(str(spice_file))
        
    print(f"Parsed {len(parser.subckts)} reference subckts.")
    
    library = {}
    
    for name, sub in parser.subckts.items():
        # Only process inverting variants (and FFs/adders/muxes)
        # Skip if name looks like a non-logic cell
        if any(x in name.lower() for x in ['decap', 'tap', 'fill', 'diode', 'conb']):
            continue
            
        G = build_dcg(sub)
        if G.number_of_nodes() == 0:
            continue
            
        g_hash = get_graph_hash(G)
        
        # Deduplicate using isomorphism check if hash matches
        # For this skeleton, we assume the hash is strong enough
        if g_hash not in library:
            library[g_hash] = {
                'representative': name,
                'variants': [name],
                'graph': nx.node_link_data(G)
            }
        else:
            library[g_hash]['variants'].append(name)
            
    out_path = Path(output_file)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    
    with open(out_path, 'w') as f:
        json.dump(library, f, indent=2)
        
    print(f"Built DCG library with {len(library)} unique topologies. Saved to {output_file}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Build DCG Library from reference SPICE")
    parser.add_argument("spice_dir", help="Directory containing reference SPICE files")
    parser.add_argument("output_file", help="Output JSON file path")
    
    args = parser.parse_args()
    build_library(args.spice_dir, args.output_file)

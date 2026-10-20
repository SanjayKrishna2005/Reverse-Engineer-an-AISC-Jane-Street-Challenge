import networkx as nx
from networkx.algorithms import isomorphism
import json

def get_graph_hash(G: nx.Graph) -> str:
    # Must match the one in build_dcg_library
    num_nmos = sum(1 for _, d in G.nodes(data=True) if d.get('type') == 'NMOS')
    num_pmos = sum(1 for _, d in G.nodes(data=True) if d.get('type') == 'PMOS')
    deg_seq = tuple(sorted([d for n, d in G.degree()]))
    edge_weights = tuple(sorted([d['weight'] for u, v, d in G.edges(data=True)]))
    return f"N{num_nmos}P{num_pmos}_D{deg_seq}_W{edge_weights}"

def node_match(n1, n2):
    return n1.get('type') == n2.get('type')

def edge_match(e1, e2):
    return e1.get('weight') == e2.get('weight')

class GateMatcher:
    def __init__(self, library_json_path: str):
        with open(library_json_path, 'r') as f:
            lib_data = json.load(f)
            
        self.library = {}
        for h, data in lib_data.items():
            G_lib = nx.node_link_graph(data['graph'])
            self.library[h] = {
                'representative': data['representative'],
                'variants': data['variants'],
                'graph': G_lib
            }
            
    def match_subgraph(self, target_G: nx.Graph, lib_G: nx.Graph):
        """
        Uses VF2 to find subgraph isomorphisms.
        """
        GM = isomorphism.GraphMatcher(
            target_G, 
            lib_G,
            node_match=node_match,
            edge_match=edge_match
        )
        # return list of mappings (dict: target_node -> lib_node)
        return list(GM.subgraph_isomorphisms_iter())

    def identify_gates(self, subckt_G: nx.Graph):
        """
        Baseline matcher: iterates over all library gates and finds matches.
        """
        # In a real implementation, you'd extract candidate subgraphs first.
        # Running subgraph_isomorphisms_iter on the full subckt_G against a library gate
        # will find all instances of that gate in the subcircuit.
        
        matches = []
        # Sort library by size descending (Baseline approach)
        sorted_lib = sorted(
            self.library.values(), 
            key=lambda x: x['graph'].number_of_nodes(), 
            reverse=True
        )
        
        # Working copy of the graph
        G_work = subckt_G.copy()
        
        for gate_def in sorted_lib:
            lib_G = gate_def['graph']
            # Find all instances
            mappings = self.match_subgraph(G_work, lib_G)
            
            for mapping in mappings:
                # Check if these nodes are still in G_work (might have been consumed)
                if all(n in G_work for n in mapping.keys()):
                    matches.append({
                        'gate_type': gate_def['representative'],
                        'mapping': mapping
                    })
                    # Remove matched nodes
                    G_work.remove_nodes_from(mapping.keys())
                    
        return matches, G_work

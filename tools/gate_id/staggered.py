import networkx as nx
from matcher import GateMatcher
from partial_stitch import apply_stitching

class StaggeredMatcher(GateMatcher):
    def __init__(self, library_json_path: str):
        super().__init__(library_json_path)
        self.buckets = self._bucket_library()
        
    def _bucket_library(self):
        """
        Divide the library Γ into k non-overlapping buckets based on graph size
        and expected frequency (e.g. basic gates first, then complex).
        For simplicity, we bucket purely by size in descending order, 
        and then group them.
        """
        # Sort by size (number of nodes)
        sorted_lib = sorted(
            self.library.values(), 
            key=lambda x: x['graph'].number_of_nodes(), 
            reverse=True
        )
        
        # Example: 3 buckets
        # Bucket 1: large gates (nodes > 10)
        # Bucket 2: medium gates (5 < nodes <= 10)
        # Bucket 3: small gates (nodes <= 5)
        
        buckets = [[], [], []]
        for gate in sorted_lib:
            n = gate['graph'].number_of_nodes()
            if n > 10:
                buckets[0].append(gate)
            elif n > 5:
                buckets[1].append(gate)
            else:
                buckets[2].append(gate)
                
        return buckets

    def identify_gates_staggered(self, subckt_G: nx.Graph):
        """
        Algorithm 1 from the paper.
        """
        all_matches = []
        G_work = subckt_G.copy()
        
        for bucket in self.buckets:
            for gate_def in bucket:
                lib_G = gate_def['graph']
                mappings = self.match_subgraph(G_work, lib_G)
                
                for mapping in mappings:
                    if all(n in G_work for n in mapping.keys()):
                        all_matches.append({
                            'gate_type': gate_def['representative'],
                            'mapping': mapping
                        })
                        G_work.remove_nodes_from(mapping.keys())
        
        # Apply Logic Stitching to recombine primitive gates into complex ones
        final_matches = apply_stitching(all_matches)
        
        return final_matches, G_work

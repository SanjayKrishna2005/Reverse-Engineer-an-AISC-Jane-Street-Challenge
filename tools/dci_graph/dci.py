from typing import Dict, List, Set, Tuple

# DCI Weights from Table I
# D/S to D/S: 8
# D/S to G: 2
# G to G: 32
# D/S-B tie bonus: 1 (handled via beta)

DCI_WEIGHTS = {
    ('DS', 'DS'): 8,
    ('DS', 'G'): 2,
    ('G', 'DS'): 2,
    ('G', 'G'): 32,
}

def get_dci_weight(term1: str, term2: str) -> int:
    """
    Get base DCI weight for two connected terminals.
    term1, term2 should be 'DS' or 'G'.
    """
    return DCI_WEIGHTS.get((term1, term2), 0)

def calculate_edge_weight(node1_type: str, node1_terms: List[str], node2_type: str, node2_terms: List[str], use_beta: bool = False) -> int:
    """
    Calculate the edge weight between two transistors based on their connected terminals.
    The terms list should contain tuples of (net_name, terminal_type) where terminal_type is 'D', 'S', 'G', 'B'.
    This function expects to be called per shared net.
    """
    weight = 0
    
    # In DCI, D and S are treated as 'DS'
    def map_term(t):
        return 'DS' if t in ['D', 'S'] else t

    # Find shared nets
    n1_nets = {net: t for net, t in node1_terms}
    n2_nets = {net: t for net, t in node2_terms}
    
    shared_nets = set(n1_nets.keys()).intersection(set(n2_nets.keys()))
    if not shared_nets:
        return 0
        
    for net in shared_nets:
        t1 = map_term(n1_nets[net])
        t2 = map_term(n2_nets[net])
        weight += get_dci_weight(t1, t2)
        
    # Beta term logic (Bulk tie-off)
    if use_beta:
        # Check if D/S is tied to B on both transistors
        n1_b = n1_nets.get([net for net, t in node1_terms if t == 'B'][0]) if [net for net, t in node1_terms if t == 'B'] else None
        n2_b = n2_nets.get([net for net, t in node2_terms if t == 'B'][0]) if [net for net, t in node2_terms if t == 'B'] else None
        
        b1 = 1 if n1_b and n1_b in [net for net, t in node1_terms if t in ['D', 'S']] else 0
        b2 = 1 if n2_b and n2_b in [net for net, t in node2_terms if t in ['D', 'S']] else 0
        
        weight += (b1 * b2)

    return weight

def analyze_structure(verilog_code: str) -> dict:
    """
    Performs lightweight structural analysis on a gate-level submodule to provide hints for the LLM.
    """
    hints = {
        "flip_flops": [],
        "buses": [],
        "clock_nets": set(),
        "reset_nets": set()
    }
    
    # Placeholder for:
    # 1. Identify all flip-flop instances (e.g. sky130_fd_sc_hd__dfxtp_1)
    # 2. Trace clock/reset pins to identify global nets
    # 3. Group FFs into buses based on naming or fan-in structural similarity
    
    return hints

def format_hints_for_llm(hints: dict) -> str:
    """
    Formats the structural hints into a human/LLM-readable string.
    """
    out = "STRUCTURAL HINTS:\n"
    out += f"- Clock nets: {', '.join(hints['clock_nets'])}\n"
    out += f"- Reset nets: {', '.join(hints['reset_nets'])}\n"
    out += f"- Flip-flops identified: {len(hints['flip_flops'])}\n"
    return out

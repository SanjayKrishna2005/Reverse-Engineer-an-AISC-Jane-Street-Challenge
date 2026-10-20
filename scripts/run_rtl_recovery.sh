#!/bin/bash
set -e

if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <gate_verilog_file> <top_module>"
    exit 1
fi

GATE_VERILOG=$1
TOP_MODULE=$2
OUT_DIR="recovery_${TOP_MODULE}"

mkdir -p ${OUT_DIR}

echo "=== RTL Recovery Pipeline for ${TOP_MODULE} ==="

echo "[1/4] Partitioning gate-level netlist..."
# Placeholder for calling partitioner.py

echo "[2/4] Structural pre-analysis & LLM Recovery..."
# Placeholder for calling llm_recover.py on each chunk
python3 tools/rtl_recovery/llm_recover.py ${GATE_VERILOG} ${TOP_MODULE}

echo "[3/4] Reassembling top module..."
python3 tools/rtl_recovery/reassembler.py ${TOP_MODULE} ${OUT_DIR}/${TOP_MODULE}_final_rtl.v ${GATE_VERILOG}

echo "[4/4] Final Verification..."
python3 tools/verify/equiv_checker.py ${GATE_VERILOG} ${OUT_DIR}/${TOP_MODULE}_final_rtl.v ${TOP_MODULE}

echo "RTL Recovery complete."

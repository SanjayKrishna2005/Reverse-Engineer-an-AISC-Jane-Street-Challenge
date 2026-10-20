#!/bin/bash
set -e

if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <gds_file> <module_name>"
    exit 1
fi

GDS_FILE=$1
MODULE_NAME=$2
OUT_DIR="work_${MODULE_NAME}"

mkdir -p ${OUT_DIR}

echo "=== Phase 1: SNE ==="
python3 tools/sne_extraction/extract.py ${GDS_FILE} --out ${OUT_DIR} --cell ${MODULE_NAME}
python3 tools/sne_extraction/postprocess.py ${OUT_DIR}/${MODULE_NAME}.spice ${OUT_DIR}/${MODULE_NAME}_clean.spice

echo "=== Phase 2 & 3: DCI & Gate ID ==="
# Expected to output ${OUT_DIR}/${MODULE_NAME}_recovered.v
# python3 tools/gate_id/staggered.py ...

echo "=== Phase 5: Verification ==="
# python3 tools/verify/equiv_checker.py gold.v ${OUT_DIR}/${MODULE_NAME}_recovered.v ${MODULE_NAME}

echo "Pipeline complete."

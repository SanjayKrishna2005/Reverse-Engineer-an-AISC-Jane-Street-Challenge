#!/bin/bash
set -e

echo "=========================================================="
echo " Setting up ReGDS-SKY130 Environment"
echo "=========================================================="

# 1. Check Python
if ! command -v python3 &> /dev/null; then
    echo "[-] Error: python3 is required but not found in PATH."
    exit 1
fi
echo "[+] Python3 detected: $(python3 --version)"

# 2. Check/Install Python dependencies
echo "[+] Installing Python dependencies..."
python3 -m pip install -r requirements.txt

# 3. Check EDA tools
echo "[+] Checking EDA tools..."
for tool in magic yosys iverilog netgen; do
    if command -v $tool &> /dev/null; then
        echo "    [x] $tool: $(which $tool)"
    else
        echo "    [ ] $tool: not found (optional for pure simulation, required for layout extraction/LEC)"
    fi
done

# 4. PDK Setup via volare
echo "[+] Configuring SKY130 PDK..."
VOLARE_CMD=""
if command -v volare &> /dev/null; then
    VOLARE_CMD="volare"
elif python3 -m volare --help &> /dev/null; then
    VOLARE_CMD="python3 -m volare"
fi

if [ -n "$VOLARE_CMD" ]; then
    echo "[+] Using volare to manage SKY130 PDK..."
    $VOLARE_CMD enable --pdk sky130 c6d73a35f524070e85faff4a6a9eef49553ebc2b || echo "[!] Notice: volare enable skipped or already enabled."
else
    echo "[!] Volare CLI not detected in PATH. Ensure PDK_ROOT is set manually."
fi

# Set default PDK_ROOT if not present
if [ -z "$PDK_ROOT" ]; then
    export PDK_ROOT="${HOME}/.volare"
fi
echo "[+] PDK_ROOT is set to: ${PDK_ROOT}"

echo "=========================================================="
echo " Setup complete! You are ready to run ReGDS-SKY130."
echo "=========================================================="

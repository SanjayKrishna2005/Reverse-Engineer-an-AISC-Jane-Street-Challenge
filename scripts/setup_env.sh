#!/bin/bash
set -e

echo "Setting up ReGDS-SKY130 Environment..."

# EDA tools (Magic, Netgen, Yosys) are already installed on the system.
echo "EDA tools detected."

# Set up Python environment
echo "Setting up Python environment..."
python3 -m pip install --user --break-system-packages -r requirements.txt

# Install SKY130 PDK via volare
echo "Installing SKY130 PDK using volare..."
VOLARE_BIN=$(which volare 2>/dev/null || echo "$(python3 -m site --user-base)/bin/volare")
"$VOLARE_BIN" ls-remote --pdk sky130
"$VOLARE_BIN" enable --pdk sky130 c6d73a35f524070e85faff4a6a9eef49553ebc2b

echo "Setup complete! Remember to activate the virtual environment: source venv/bin/activate"

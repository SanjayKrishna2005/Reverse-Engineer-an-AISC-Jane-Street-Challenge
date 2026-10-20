import os
import subprocess
import argparse
from pathlib import Path

def extract_gds(gds_path: str, output_dir: str, cell_name: str = None, rcfile: str = None, pdk_root: str = None) -> str:
    """
    Extracts a GDSII file to SPICE using Magic VLSI.
    """
    gds_file = Path(gds_path)
    if not gds_file.exists():
        raise FileNotFoundError(f"GDS file not found: {gds_path}")
    
    out_dir = Path(output_dir)
    out_dir.mkdir(parents=True, exist_ok=True)
    
    if cell_name is None:
        cell_name = gds_file.stem

    # Create a Magic script to run extraction in batch mode
    magic_script = out_dir / f"extract_{cell_name}.tcl"
    with open(magic_script, 'w') as f:
        f.write(f"gds read {gds_file.absolute()}\n")
        f.write(f"load {cell_name}\n")
        f.write("extract all\n")
        f.write("ext2spice cthresh 0 rthresh 0\n")
        f.write("ext2spice hierarchy on\n")
        f.write("ext2spice\n")
        f.write("quit -noprompt\n")

    # Run Magic in batch mode
    print(f"Running Magic extraction for {cell_name}...")
    magic_cmd = ['magic', '-dnull', '-noconsole']
    if rcfile:
        magic_cmd.extend(['-rcfile', str(Path(rcfile).absolute())])
    magic_cmd.append(str(magic_script))
    
    env = os.environ.copy()
    if pdk_root:
        env['PDK_ROOT'] = str(Path(pdk_root).absolute())
        
    try:
        subprocess.run(
            magic_cmd,
            cwd=out_dir,
            check=True,
            capture_output=True,
            text=True,
            env=env
        )
    except subprocess.CalledProcessError as e:
        print(f"Magic extraction failed:\n{e.stderr}")
        raise

    spice_out = out_dir / f"{cell_name}.spice"
    if not spice_out.exists():
        raise FileNotFoundError(f"SPICE file not generated: {spice_out}")
    
    print(f"Extraction successful: {spice_out}")
    return str(spice_out)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Extract GDSII to SPICE using Magic VLSI")
    parser.add_argument("gds_path", help="Path to the GDSII file")
    parser.add_argument("--out", default=".", help="Output directory")
    parser.add_argument("--cell", default=None, help="Top cell name (defaults to GDS filename)")
    parser.add_argument("--rcfile", default=None, help="Path to magic rcfile (e.g. sky130A.magicrc)")
    parser.add_argument("--pdk_root", default=None, help="Path to PDK_ROOT for magic")
    
    args = parser.parse_args()
    extract_gds(args.gds_path, args.out, args.cell, args.rcfile, args.pdk_root)

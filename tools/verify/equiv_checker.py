import subprocess
from pathlib import Path

class YosysEquivChecker:
    def __init__(self, work_dir: str = "."):
        self.work_dir = Path(work_dir)
        self.work_dir.mkdir(parents=True, exist_ok=True)
        
    def check_equivalence(self, gold_verilog: str, gate_verilog: str, module_name: str) -> bool:
        """
        Runs Yosys equivalence checking between a gold standard and the extracted gate netlist.
        """
        script_path = self.work_dir / f"equiv_{module_name}.ys"
        
        script = f"""
        read_verilog {gold_verilog}
        prep -top {module_name} -flatten
        splitnets -ports
        design -stash gold
        
        read_verilog {gate_verilog}
        prep -top {module_name} -flatten
        splitnets -ports
        design -stash gate
        
        design -copy-from gold -as gold {module_name}
        design -copy-from gate -as gate {module_name}
        
        equiv_make gold gate equiv
        hierarchy -top equiv
        equiv_induct
        equiv_status -assert
        """
        
        with open(script_path, 'w') as f:
            f.write(script)
            
        print(f"Running Yosys equivalence check for {module_name}...")
        try:
            result = subprocess.run(
                ['yosys', '-s', str(script_path)],
                cwd=self.work_dir,
                capture_output=True,
                text=True
            )
            
            if "Equivalence successfully proven" in result.stdout:
                print(f"✅ Equivalence proven for {module_name}")
                return True
            else:
                print(f"❌ Equivalence failed for {module_name}")
                # You might want to dump result.stdout to a log file here
                return False
                
        except Exception as e:
            print(f"Yosys execution failed: {e}")
            return False

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("gold", help="Golden Verilog")
    parser.add_argument("gate", help="Gate-level extracted Verilog")
    parser.add_argument("module", help="Top module name")
    args = parser.parse_args()
    
    checker = YosysEquivChecker()
    checker.check_equivalence(args.gold, args.gate, args.module)

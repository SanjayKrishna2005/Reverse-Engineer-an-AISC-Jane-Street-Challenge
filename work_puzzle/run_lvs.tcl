set PDK_Spice "./pdk.spice"
readnet spice $PDK_Spice
readnet verilog ./puzzle_synth.v
set_parameter -ignore_missing_ports true
set_parameter -equate_pins true
# set_parameter -equivalence sky130_fd_pr__special_nfet_01v8 sky130_fd_pr__nfet_01v8
lvs "puzzle" "puzzle_gate" -full -quiet -json results.lvs
if {[file exists results.lvs] && [regexp {LVS comparison succeeded} [read results.lvs]]} {
    puts "✅ LVS comparison completed successfully"
} else {
    puts "❌ LVS comparison FAILED – see results.lvs for details"
}

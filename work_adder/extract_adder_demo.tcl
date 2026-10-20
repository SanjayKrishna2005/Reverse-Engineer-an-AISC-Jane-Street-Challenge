gds read /Users/sanjaykrishna/Documents/regds/project3/04_final.gds
puts "GDS read done"
load adder_demo
puts "Load done"
select top cell
extract all
puts "Extract done"
ext2spice lvs
ext2spice
puts "ext2spice done"
quit -noprompt

gds read /Users/sanjaykrishna/Documents/regds/project3/work_puzzle/../puzzle.gds
load puzzle
extract all
ext2spice cthresh 0 rthresh 0
ext2spice hierarchy on
ext2spice
quit -noprompt

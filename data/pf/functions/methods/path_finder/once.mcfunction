
## Once Path Finder

# Path Finder
execute if entity @e[tag=pf.target] at @s run function pf:methods/path_finder/execute_path_finder

# Remove Target Tag
tag @e[tag=pf.target] remove pf.target
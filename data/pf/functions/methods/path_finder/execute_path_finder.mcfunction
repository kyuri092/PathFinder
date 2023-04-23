
## Exist Target

# Id
execute unless score @s pf.id = @s pf.id store result score @s pf.id run scoreboard players add $count pf.id 1

# Same Id
tag @s add pf.entity
execute as @e[tag=pf.shortestPath] if score @s pf.ownerId = @e[tag=pf.entity, limit=1] pf.id run tag @s add pf.same

# Entity Score Init
function pf:methods/path_finder/entity_score_init

# Path Finder Init
kill @e[tag=pf.same]
execute as @e[tag=pf.target] run function pf:methods/path_finder/get_pos/2
scoreboard players operation @s pf.coolTime = @s pf.maxCoolTime

# Start Marker
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags: ["pf.M", "pf.same", "pf.init", "pf.startM"]}
execute store result score @e[tag=pf.init, limit=1] pf.markerId run scoreboard players add $count pf.markerId 1
tag @e[tag=pf.init] remove pf.init

# Finish Marker
execute as @e[tag=pf.target, limit=1, sort=nearest] at @s align xyz positioned ~0.5 ~ ~0.5 run function pf:methods/path_finder/summon_target_m/

# Find Path
scoreboard players operation $i pf.number = @s pf.limit
execute as @e[tag=pf.startM, tag=pf.same, limit=1] at @s run function pf:methods/path_finder/refunc
kill @e[tag=pf.targetM]

# No Finish Finder
execute if score $i pf.number matches -1 run function pf:methods/path_finder/no_finish

# Get Shortest Path
function pf:methods/path_finder/get_shortest_path/

# Remove Tag
kill @e[tag=pf.startM]
tag @e[tag=pf.pathClosed] remove pf.pathClosed
tag @e[tag=pf.same] remove pf.same
tag @s remove pf.entity
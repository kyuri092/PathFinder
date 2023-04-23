
## Recursive Function

tag @s remove pf.nextPath
tag @s add pf.pathClosed
tag @s add pf._
function pf:methods/path_finder/get_pos/1


# Search
execute if score @e[tag=pf.entity, limit=1] pf.search matches 1 run function pf:methods/path_finder/search/1
execute if score @e[tag=pf.entity, limit=1] pf.search matches 2 run function pf:methods/path_finder/search/2

# Marker Init
execute as @e[tag=pf.init] run function pf:methods/path_finder/marker_init/

# Find Next Path
function pf:methods/path_finder/find_next_path

# Myself
tag @s remove pf._

# Recursive Function
scoreboard players remove $i pf.number 1
execute if score $i pf.number matches 0.. as @e[tag=pf.nextPath, limit=1, sort=random] at @s unless entity @e[tag=pf.targetM, distance=..0.00001] run function pf:methods/path_finder/refunc
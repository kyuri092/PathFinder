
## Tick

# Cool Time
execute as @e if score @s pf.coolTime matches 1.. run scoreboard players remove @s pf.coolTime 1
execute as @e if score @s pf.coolTime matches 0 run scoreboard players reset @s pf.coolTime

# Kill Marker
function pf:methods/path_finder/kill/
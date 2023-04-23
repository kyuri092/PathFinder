
## Get Path Number

scoreboard players operation #pathId pf.number = @e[tag=pf.same, tag=!pf._, limit=1] pf.markerId
scoreboard players operation #pathId pf.number < @e[tag=pf.same, tag=!pf._] pf.markerId

execute as @e[tag=pf.same, tag=!pf._] if score @s pf.markerId = #pathId pf.number run tag @s add pf._2
execute as @e[tag=pf._2] store result score @s pf.path run scoreboard players add #pathCount pf.number 1

tag @e[tag=pf._2] add pf._
tag @e[tag=pf._2] remove pf._2
execute unless score #pathId pf.number = #pathMaxId pf.number run function pf:methods/path_finder/get_shortest_path/get_path_number
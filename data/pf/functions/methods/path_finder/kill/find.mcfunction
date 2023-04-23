
## Find

tag @s add pf._
execute as @e[tag=pf.shortestPath] if score @s pf.ownerId = @e[tag=pf._, limit=1] pf.id run tag @s add pf.exist
tag @s remove pf._
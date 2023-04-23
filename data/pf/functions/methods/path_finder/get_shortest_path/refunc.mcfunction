
## Get Shortest Path

tag @e[tag=pf._] remove pf._
tag @s add pf._
tag @s add pf.shortestPath

execute as @e[tag=pf.same, tag=pf.pathClosed] if score @s pf.markerId = @e[tag=pf._, limit=1] pf.parentId run function pf:methods/path_finder/get_shortest_path/refunc
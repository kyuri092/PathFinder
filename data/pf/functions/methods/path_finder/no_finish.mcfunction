
## No Finish

tag @e[tag=pf.nextPath] remove pf.nextPath

scoreboard players operation _ pf.number = @e[tag=pf.pathClosed, limit=1, scores={pf.heuristic=1..}] pf.heuristic
scoreboard players operation _ pf.number < @e[tag=pf.pathClosed, scores={pf.heuristic=1..}] pf.heuristic

execute as @e[tag=pf.pathClosed] if score @s pf.heuristic = _ pf.number run tag @s add pf._
tag @e[tag=pf._, limit=1, sort=random] add pf.nextPath
tag @e[tag=pf._] remove pf._
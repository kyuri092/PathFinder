
## Find Next Path

scoreboard players operation _ pf.number = @e[tag=pf.same, tag=!pf.pathClosed, limit=1] pf.total
scoreboard players operation _ pf.number < @e[tag=pf.same, tag=!pf.pathClosed] pf.total
execute as @e[tag=pf.same, tag=!pf.pathClosed] if score @s pf.total = _ pf.number run tag @s add pf.minTotal
scoreboard players operation _ pf.number = @e[tag=pf.minTotal, limit=1] pf.cost
scoreboard players operation _ pf.number < @e[tag=pf.minTotal] pf.cost
execute as @e[tag=pf.minTotal] if score @s pf.cost = _ pf.number run tag @s add pf.minCost
tag @e[tag=pf.minCost, limit=1, sort=random] add pf.nextPath
tag @e[tag=pf.minTotal] remove pf.minTotal
tag @e[tag=pf.minCost] remove pf.minCost
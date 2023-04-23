
## Get Cost

scoreboard players operation @s pf.preCost = @e[tag=pf._, limit=1] pf.cost
scoreboard players operation @s pf.preCost += #baseCost pf.number

scoreboard players operation @s[tag=pf.obliqueDirectionCost] pf.preCost += #obliqueCost pf.number
tag @s[tag=pf.obliqueDirectionCost] remove pf.obliqueDirectionCost
scoreboard players operation @s[tag=pf.swimCost] pf.preCost += #swimCost pf.number
tag @s[tag=pf.swimCost] remove pf.swimCost

execute unless score @s pf.parentId = @s pf.parentId run scoreboard players operation @s pf.parentId = @e[tag=pf._, limit=1] pf.markerId
execute unless score @s pf.cost = @s pf.cost run scoreboard players operation @s pf.cost = @s pf.preCost
execute if score @s pf.preCost < @s pf.cost run scoreboard players operation @s pf.parentId = @e[tag=pf._, limit=1] pf.markerId
execute if score @s pf.preCost < @s pf.cost run scoreboard players operation @s pf.cost = @s pf.preCost
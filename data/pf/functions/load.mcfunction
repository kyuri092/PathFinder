
## Load

# Define
#define storage pf:

# Score
scoreboard objectives add pf.id dummy
scoreboard objectives add pf.markerId dummy
scoreboard objectives add pf.ownerId dummy
scoreboard objectives add pf.parentId dummy
scoreboard objectives add pf.heuristic dummy
scoreboard objectives add pf.cost dummy
scoreboard objectives add pf.preCost dummy
scoreboard objectives add pf.total dummy
scoreboard objectives add pf.path dummy
scoreboard objectives add pf.search dummy
scoreboard objectives add pf.maxCoolTime dummy
scoreboard objectives add pf.coolTime dummy

# Set Number
scoreboard objectives add pf.number dummy
scoreboard players set #-1 pf.number -1
scoreboard players set #2 pf.number 2
scoreboard players set #3 pf.number 3
scoreboard players set #4 pf.number 4

# Set Score
scoreboard players set #baseCost pf.number 100
scoreboard players set #obliqueCost pf.number 41


# Options
function pf:options/load

# Set Outside Score
# execute if score #
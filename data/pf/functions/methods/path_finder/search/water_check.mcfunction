
## Water Check

# Reset
data remove storage pf: _.isWater

# Blocks
execute if block ~ ~ ~ #pf:water_blocks run data modify storage pf: _.isWater set value 1b

# Waterlogged
execute if predicate pf:waterlogged run data modify storage pf: _.isWater set value 1b
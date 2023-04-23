
## Avoid Check

# Reset
data remove storage pf: _.isAvoid

# Blocks
execute unless block ~ ~ ~ #pf:no_avoid_blocks run data modify storage pf: _.isAvoid set value 1b

# Fence Gate
execute if predicate pf:open run data modify storage pf: _.isAvoid set value 1b

# Snow
execute if block ~ ~ ~ snow unless block ~ ~ ~ snow[layers=1] run data modify storage pf: _.isAvoid set value 1b
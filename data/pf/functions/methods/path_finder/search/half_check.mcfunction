
## Half Check

# Reset
data remove storage pf: _.isHalf

# Blocks
execute if block ~ ~ ~ #pf:half_blocks run data modify storage pf: _.isHalf set value 1b

# Slabs
execute if predicate pf:type_bottom run data modify storage pf: _.isHalf set value 1b

# Rods
execute if block ~ ~ ~ end_rod unless block ~ ~ ~ end_rod[facing=up] unless block ~ ~ ~ end_rod[facing=down] run data modify storage pf: _.isHalf set value 1b
execute if block ~ ~ ~ lightning_rod unless block ~ ~ ~ lightning_rod[facing=up] unless block ~ ~ ~ lightning_rod[facing=down] run data modify storage pf: _.isHalf set value 1b

# Chain
execute if block ~ ~ ~ chain unless block ~ ~ ~ chain[axis=y] run data modify storage pf: _.isHalf set value 1b

# Snow
execute if block ~ ~ ~ snow unless block ~ ~ ~ snow[layers=8] run data modify storage pf: _.isHalf set value 1b
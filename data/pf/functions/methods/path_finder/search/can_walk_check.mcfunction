
## Can Walk Check

# Reset
data remove storage pf: _.canWalk

# Blocks
execute if block ~ ~ ~ #pf:can_walk_blocks run data modify storage pf: _.canWalk set value 1b
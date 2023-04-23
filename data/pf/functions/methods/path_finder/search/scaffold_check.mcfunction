
## Scaffold Check

# Reset
data remove storage pf: _.isScaffold

# Blocks
execute if block ~ ~ ~ #pf:scaffolding_blocks run data modify storage pf: _.isScaffold set value 1b
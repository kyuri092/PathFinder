
## Search

# Check
data remove storage pf: _
execute if block ~ ~1 ~ #pf:no_collision_blocks run data modify storage pf: _.canJump set value 1b
execute positioned ~ ~-1 ~ run function pf:methods/path_finder/search/half_check
data modify storage pf: _.isHalf2 set from storage pf: _.isHalf

# Avoid Check
execute positioned ~1 ~ ~ run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.E_0.isAvoid set from storage pf: _.isAvoid
execute positioned ~-1 ~ ~ run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.W_0.isAvoid set from storage pf: _.isAvoid
execute positioned ~ ~ ~1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.S_0.isAvoid set from storage pf: _.isAvoid
execute positioned ~ ~ ~-1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.N_0.isAvoid set from storage pf: _.isAvoid

execute positioned ~1 ~1 ~ run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.E_1.isAvoid set from storage pf: _.isAvoid
execute positioned ~-1 ~1 ~ run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.W_1.isAvoid set from storage pf: _.isAvoid
execute positioned ~ ~1 ~1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.S_1.isAvoid set from storage pf: _.isAvoid
execute positioned ~ ~1 ~-1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.N_1.isAvoid set from storage pf: _.isAvoid

execute positioned ~1 ~-1 ~ run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.E_2.isAvoid set from storage pf: _.isAvoid
execute positioned ~-1 ~-1 ~ run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.W_2.isAvoid set from storage pf: _.isAvoid
execute positioned ~ ~-1 ~1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.S_2.isAvoid set from storage pf: _.isAvoid
execute positioned ~ ~-1 ~-1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.N_2.isAvoid set from storage pf: _.isAvoid

execute positioned ~1 ~-2 ~ run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.E_3.isAvoid set from storage pf: _.isAvoid
execute positioned ~-1 ~-2 ~ run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.W_3.isAvoid set from storage pf: _.isAvoid
execute positioned ~ ~-2 ~1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.S_3.isAvoid set from storage pf: _.isAvoid
execute positioned ~ ~-2 ~-1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.N_3.isAvoid set from storage pf: _.isAvoid

execute positioned ~1 ~ ~1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.SE_0.isAvoid set from storage pf: _.isAvoid
execute positioned ~-1 ~ ~1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.SW_0.isAvoid set from storage pf: _.isAvoid
execute positioned ~-1 ~ ~-1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.NW_0.isAvoid set from storage pf: _.isAvoid
execute positioned ~1 ~ ~-1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.NE_0.isAvoid set from storage pf: _.isAvoid

execute positioned ~1 ~1 ~1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.SE_1.isAvoid set from storage pf: _.isAvoid
execute positioned ~-1 ~1 ~1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.SW_1.isAvoid set from storage pf: _.isAvoid
execute positioned ~-1 ~1 ~-1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.NW_1.isAvoid set from storage pf: _.isAvoid
execute positioned ~1 ~1 ~-1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.NE_1.isAvoid set from storage pf: _.isAvoid

execute positioned ~1 ~-1 ~1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.SE_2.isAvoid set from storage pf: _.isAvoid
execute positioned ~-1 ~-1 ~1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.SW_2.isAvoid set from storage pf: _.isAvoid
execute positioned ~-1 ~-1 ~-1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.NW_2.isAvoid set from storage pf: _.isAvoid
execute positioned ~1 ~-1 ~-1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.NE_2.isAvoid set from storage pf: _.isAvoid

execute positioned ~1 ~-2 ~1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.SE_3.isAvoid set from storage pf: _.isAvoid
execute positioned ~-1 ~-2 ~1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.SW_3.isAvoid set from storage pf: _.isAvoid
execute positioned ~-1 ~-2 ~-1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.NW_3.isAvoid set from storage pf: _.isAvoid
execute positioned ~1 ~-2 ~-1 run function pf:methods/path_finder/search/avoid_check
data modify storage pf: _.NE_3.isAvoid set from storage pf: _.isAvoid

# Scaffold Check
execute positioned ~1 ~ ~ run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.E_0.isScaffold set from storage pf: _.isScaffold
execute positioned ~-1 ~ ~ run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.W_0.isScaffold set from storage pf: _.isScaffold
execute positioned ~ ~ ~1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.S_0.isScaffold set from storage pf: _.isScaffold
execute positioned ~ ~ ~-1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.N_0.isScaffold set from storage pf: _.isScaffold

execute positioned ~1 ~1 ~ run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.E_1.isScaffold set from storage pf: _.isScaffold
execute positioned ~-1 ~1 ~ run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.W_1.isScaffold set from storage pf: _.isScaffold
execute positioned ~ ~1 ~1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.S_1.isScaffold set from storage pf: _.isScaffold
execute positioned ~ ~1 ~-1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.N_1.isScaffold set from storage pf: _.isScaffold

execute positioned ~1 ~-1 ~ run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.E_2.isScaffold set from storage pf: _.isScaffold
execute positioned ~-1 ~-1 ~ run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.W_2.isScaffold set from storage pf: _.isScaffold
execute positioned ~ ~-1 ~1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.S_2.isScaffold set from storage pf: _.isScaffold
execute positioned ~ ~-1 ~-1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.N_2.isScaffold set from storage pf: _.isScaffold

execute positioned ~1 ~-2 ~ run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.E_3.isScaffold set from storage pf: _.isScaffold
execute positioned ~-1 ~-2 ~ run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.W_3.isScaffold set from storage pf: _.isScaffold
execute positioned ~ ~-2 ~1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.S_3.isScaffold set from storage pf: _.isScaffold
execute positioned ~ ~-2 ~-1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.N_3.isScaffold set from storage pf: _.isScaffold

execute positioned ~1 ~ ~1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.SE_0.isScaffold set from storage pf: _.isScaffold
execute positioned ~-1 ~ ~1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.SW_0.isScaffold set from storage pf: _.isScaffold
execute positioned ~-1 ~ ~-1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.NW_0.isScaffold set from storage pf: _.isScaffold
execute positioned ~1 ~ ~-1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.NE_0.isScaffold set from storage pf: _.isScaffold

execute positioned ~1 ~-1 ~1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.SE_2.isScaffold set from storage pf: _.isScaffold
execute positioned ~-1 ~-1 ~1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.SW_2.isScaffold set from storage pf: _.isScaffold
execute positioned ~-1 ~-1 ~-1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.NW_2.isScaffold set from storage pf: _.isScaffold
execute positioned ~1 ~-1 ~-1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.NE_2.isScaffold set from storage pf: _.isScaffold

execute positioned ~1 ~-2 ~1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.SE_3.isScaffold set from storage pf: _.isScaffold
execute positioned ~-1 ~-2 ~1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.SW_3.isScaffold set from storage pf: _.isScaffold
execute positioned ~-1 ~-2 ~-1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.NW_3.isScaffold set from storage pf: _.isScaffold
execute positioned ~1 ~-2 ~-1 run function pf:methods/path_finder/search/scaffold_check
data modify storage pf: _.NE_3.isScaffold set from storage pf: _.isScaffold

# Water Check
execute positioned ~1 ~-1 ~ run function pf:methods/path_finder/search/water_check
data modify storage pf: _.E_2.isWater set from storage pf: _.isWater
execute positioned ~-1 ~-1 ~ run function pf:methods/path_finder/search/water_check
data modify storage pf: _.W_2.isWater set from storage pf: _.isWater
execute positioned ~ ~-1 ~1 run function pf:methods/path_finder/search/water_check
data modify storage pf: _.S_2.isWater set from storage pf: _.isWater
execute positioned ~ ~-1 ~-1 run function pf:methods/path_finder/search/water_check
data modify storage pf: _.N_2.isWater set from storage pf: _.isWater

execute positioned ~1 ~-1 ~1 run function pf:methods/path_finder/search/water_check
data modify storage pf: _.SE_2.isWater set from storage pf: _.isWater
execute positioned ~-1 ~-1 ~1 run function pf:methods/path_finder/search/water_check
data modify storage pf: _.SW_2.isWater set from storage pf: _.isWater
execute positioned ~-1 ~-1 ~-1 run function pf:methods/path_finder/search/water_check
data modify storage pf: _.NW_2.isWater set from storage pf: _.isWater
execute positioned ~1 ~-1 ~-1 run function pf:methods/path_finder/search/water_check
data modify storage pf: _.NE_2.isWater set from storage pf: _.isWater

execute positioned ~ ~1 ~ run function pf:methods/path_finder/search/water_check
data modify storage pf: _.0_1.isWater set from storage pf: _.isWater
execute positioned ~ ~-1 ~ run function pf:methods/path_finder/search/water_check
data modify storage pf: _.0_2.isWater set from storage pf: _.isWater

# Void Check
execute unless data storage pf: _.E_0{isAvoid: 1b} unless data storage pf: _.E_0{isScaffold: 1b} run data modify storage pf: _.E_0.isVoid set value 1b
execute unless data storage pf: _.W_0{isAvoid: 1b} unless data storage pf: _.W_0{isScaffold: 1b} run data modify storage pf: _.W_0.isVoid set value 1b
execute unless data storage pf: _.S_0{isAvoid: 1b} unless data storage pf: _.S_0{isScaffold: 1b} run data modify storage pf: _.S_0.isVoid set value 1b
execute unless data storage pf: _.N_0{isAvoid: 1b} unless data storage pf: _.N_0{isScaffold: 1b} run data modify storage pf: _.N_0.isVoid set value 1b

execute unless data storage pf: _.E_1{isAvoid: 1b} unless data storage pf: _.E_1{isScaffold: 1b} run data modify storage pf: _.E_1.isVoid set value 1b
execute unless data storage pf: _.W_1{isAvoid: 1b} unless data storage pf: _.W_1{isScaffold: 1b} run data modify storage pf: _.W_1.isVoid set value 1b
execute unless data storage pf: _.S_1{isAvoid: 1b} unless data storage pf: _.S_1{isScaffold: 1b} run data modify storage pf: _.S_1.isVoid set value 1b
execute unless data storage pf: _.N_1{isAvoid: 1b} unless data storage pf: _.N_1{isScaffold: 1b} run data modify storage pf: _.N_1.isVoid set value 1b

execute unless data storage pf: _.E_2{isAvoid: 1b} unless data storage pf: _.E_2{isScaffold: 1b} run data modify storage pf: _.E_2.isVoid set value 1b
execute unless data storage pf: _.W_2{isAvoid: 1b} unless data storage pf: _.W_2{isScaffold: 1b} run data modify storage pf: _.W_2.isVoid set value 1b
execute unless data storage pf: _.S_2{isAvoid: 1b} unless data storage pf: _.S_2{isScaffold: 1b} run data modify storage pf: _.S_2.isVoid set value 1b
execute unless data storage pf: _.N_2{isAvoid: 1b} unless data storage pf: _.N_2{isScaffold: 1b} run data modify storage pf: _.N_2.isVoid set value 1b

execute unless data storage pf: _.SE_0{isAvoid: 1b} unless data storage pf: _.SE_0{isScaffold: 1b} run data modify storage pf: _.SE_0.isVoid set value 1b
execute unless data storage pf: _.SW_0{isAvoid: 1b} unless data storage pf: _.SW_0{isScaffold: 1b} run data modify storage pf: _.SW_0.isVoid set value 1b
execute unless data storage pf: _.NW_0{isAvoid: 1b} unless data storage pf: _.NW_0{isScaffold: 1b} run data modify storage pf: _.NW_0.isVoid set value 1b
execute unless data storage pf: _.NE_0{isAvoid: 1b} unless data storage pf: _.NE_0{isScaffold: 1b} run data modify storage pf: _.NE_0.isVoid set value 1b

execute unless data storage pf: _.SE_2{isAvoid: 1b} unless data storage pf: _.SE_2{isScaffold: 1b} run data modify storage pf: _.SE_2.isVoid set value 1b
execute unless data storage pf: _.SW_2{isAvoid: 1b} unless data storage pf: _.SW_2{isScaffold: 1b} run data modify storage pf: _.SW_2.isVoid set value 1b
execute unless data storage pf: _.NW_2{isAvoid: 1b} unless data storage pf: _.NW_2{isScaffold: 1b} run data modify storage pf: _.NW_2.isVoid set value 1b
execute unless data storage pf: _.NE_2{isAvoid: 1b} unless data storage pf: _.NE_2{isScaffold: 1b} run data modify storage pf: _.NE_2.isVoid set value 1b


# 0 oblique
execute positioned ~1 ~ ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} unless data storage pf: _.E_0{isAvoid: 1b} unless data storage pf: _.SE_0{isAvoid: 1b} run function pf:methods/path_finder/search/direction/se_0
execute positioned ~-1 ~ ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} unless data storage pf: _.W_0{isAvoid: 1b} unless data storage pf: _.SW_0{isAvoid: 1b} run function pf:methods/path_finder/search/direction/sw_0
execute positioned ~-1 ~ ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} unless data storage pf: _.W_0{isAvoid: 1b} unless data storage pf: _.NW_0{isAvoid: 1b} run function pf:methods/path_finder/search/direction/nw_0
execute positioned ~1 ~ ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} unless data storage pf: _.E_0{isAvoid: 1b} unless data storage pf: _.NE_0{isAvoid: 1b} run function pf:methods/path_finder/search/direction/ne_0

# 1 oblique
data modify storage pf: _.isJumpNow set value 1b
execute if data storage pf: _{canJump:1b} positioned ~1 ~1 ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} if data storage pf: _.S_1{isVoid: 1b} unless data storage pf: _.E_0{isAvoid: 1b} if data storage pf: _.E_1{isVoid: 1b} unless data storage pf: _.SE_1{isAvoid: 1b} run function pf:methods/path_finder/search/direction/se_1
execute if data storage pf: _{canJump:1b} positioned ~-1 ~1 ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} if data storage pf: _.S_1{isVoid: 1b} unless data storage pf: _.W_0{isAvoid: 1b} if data storage pf: _.W_1{isVoid: 1b} unless data storage pf: _.SW_1{isAvoid: 1b} run function pf:methods/path_finder/search/direction/sw_1
execute if data storage pf: _{canJump:1b} positioned ~-1 ~1 ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} if data storage pf: _.N_1{isVoid: 1b} unless data storage pf: _.W_0{isAvoid: 1b} if data storage pf: _.W_1{isVoid: 1b} unless data storage pf: _.NW_1{isAvoid: 1b} run function pf:methods/path_finder/search/direction/nw_1
execute if data storage pf: _{canJump:1b} positioned ~1 ~1 ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} if data storage pf: _.N_1{isVoid: 1b} unless data storage pf: _.E_0{isAvoid: 1b} if data storage pf: _.E_1{isVoid: 1b} unless data storage pf: _.NE_1{isAvoid: 1b} run function pf:methods/path_finder/search/direction/ne_1
data remove storage pf: _.isJumpNow

# -1 oblique
execute positioned ~1 ~-1 ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} unless data storage pf: _.E_0{isAvoid: 1b} if data storage pf: _.SE_0{isVoid: 1b} unless data storage pf: _.SE_2{isAvoid: 1b} run function pf:methods/path_finder/search/direction/se_2
execute positioned ~-1 ~-1 ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} unless data storage pf: _.W_0{isAvoid: 1b} if data storage pf: _.SW_0{isVoid: 1b} unless data storage pf: _.SW_2{isAvoid: 1b} run function pf:methods/path_finder/search/direction/sw_2
execute positioned ~-1 ~-1 ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} unless data storage pf: _.W_0{isAvoid: 1b} if data storage pf: _.NW_0{isVoid: 1b} unless data storage pf: _.NW_2{isAvoid: 1b} run function pf:methods/path_finder/search/direction/nw_2
execute positioned ~1 ~-1 ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} unless data storage pf: _.E_0{isAvoid: 1b} if data storage pf: _.NE_0{isVoid: 1b} unless data storage pf: _.NE_2{isAvoid: 1b} run function pf:methods/path_finder/search/direction/ne_2

# -2 oblique
execute positioned ~1 ~-2 ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} unless data storage pf: _.E_0{isAvoid: 1b} if data storage pf: _.SE_0{isVoid: 1b} if data storage pf: _.SE_2{isVoid: 1b} unless data storage pf: _.SE_2{isWater: 1b} unless data storage pf: _.SE_3{isAvoid: 1b} run function pf:methods/path_finder/search/direction/se_3
execute positioned ~-1 ~-2 ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} unless data storage pf: _.W_0{isAvoid: 1b} if data storage pf: _.SW_0{isVoid: 1b} if data storage pf: _.SW_2{isVoid: 1b} unless data storage pf: _.SW_2{isWater: 1b} unless data storage pf: _.SW_3{isAvoid: 1b} run function pf:methods/path_finder/search/direction/sw_3
execute positioned ~-1 ~-2 ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} unless data storage pf: _.W_0{isAvoid: 1b} if data storage pf: _.NW_0{isVoid: 1b} if data storage pf: _.NW_2{isVoid: 1b} unless data storage pf: _.NW_2{isWater: 1b} unless data storage pf: _.NW_3{isAvoid: 1b} run function pf:methods/path_finder/search/direction/nw_3
execute positioned ~1 ~-2 ~-1 unless entity @e[tag=pf.Name, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} unless data storage pf: _.E_0{isAvoid: 1b} if data storage pf: _.NE_0{isVoid: 1b} if data storage pf: _.NE_2{isVoid: 1b} unless data storage pf: _.NE_2{isWater: 1b} unless data storage pf: _.NE_3{isAvoid: 1b} run function pf:methods/path_finder/search/direction/ne_3

# Oblique
tag @e[tag=pf.same, tag=pf.init] add pf.obliqueDirectionCost

# 0
execute positioned ~1 ~ ~ unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.E_0{isAvoid: 1b} run function pf:methods/path_finder/search/direction/e_0
execute positioned ~-1 ~ ~ unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.W_0{isAvoid: 1b} run function pf:methods/path_finder/search/direction/w_0
execute positioned ~ ~ ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} run function pf:methods/path_finder/search/direction/s_0
execute positioned ~ ~ ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} run function pf:methods/path_finder/search/direction/n_0

# 1
data modify storage pf: _.isJumpNow set value 1b
execute if data storage pf: _{canJump:1b} positioned ~1 ~1 ~ unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.E_1{isAvoid: 1b} run function pf:methods/path_finder/search/direction/e_1
execute if data storage pf: _{canJump:1b} positioned ~-1 ~1 ~ unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.W_1{isAvoid: 1b} run function pf:methods/path_finder/search/direction/w_1
execute if data storage pf: _{canJump:1b} positioned ~ ~1 ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_1{isAvoid: 1b} run function pf:methods/path_finder/search/direction/s_1
execute if data storage pf: _{canJump:1b} positioned ~ ~1 ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_1{isAvoid: 1b} run function pf:methods/path_finder/search/direction/n_1
data remove storage pf: _.isJumpNow

# -1
execute positioned ~1 ~-1 ~ unless entity @e[tag=pf.same, distance=..0.0001] if data storage pf: _.E_0{isVoid: 1b} unless data storage pf: _.E_2{isAvoid: 1b} run function pf:methods/path_finder/search/direction/e_2
execute positioned ~-1 ~-1 ~ unless entity @e[tag=pf.same, distance=..0.0001] if data storage pf: _.W_0{isVoid: 1b} unless data storage pf: _.W_2{isAvoid: 1b} run function pf:methods/path_finder/search/direction/w_2
execute positioned ~ ~-1 ~1 unless entity @e[tag=pf.same, distance=..0.0001] if data storage pf: _.S_0{isVoid: 1b} unless data storage pf: _.S_2{isAvoid: 1b} run function pf:methods/path_finder/search/direction/s_2
execute positioned ~ ~-1 ~-1 unless entity @e[tag=pf.same, distance=..0.0001] if data storage pf: _.N_0{isVoid: 1b} unless data storage pf: _.N_2{isAvoid: 1b} run function pf:methods/path_finder/search/direction/n_2

# -2
execute positioned ~1 ~-2 ~ unless entity @e[tag=pf.same, distance=..0.0001] if data storage pf: _.E_0{isVoid: 1b} if data storage pf: _.E_2{isVoid: 1b} unless data storage pf: _.E_2{isWater: 1b} unless data storage pf: _.E_3{isAvoid: 1b} run function pf:methods/path_finder/search/direction/e_3
execute positioned ~-1 ~-2 ~ unless entity @e[tag=pf.same, distance=..0.0001] if data storage pf: _.W_0{isVoid: 1b} if data storage pf: _.W_2{isVoid: 1b} unless data storage pf: _.W_2{isWater: 1b} unless data storage pf: _.W_3{isAvoid: 1b} run function pf:methods/path_finder/search/direction/w_3
execute positioned ~ ~-2 ~1 unless entity @e[tag=pf.same, distance=..0.0001] if data storage pf: _.S_0{isVoid: 1b} if data storage pf: _.S_2{isVoid: 1b} unless data storage pf: _.S_2{isWater: 1b} unless data storage pf: _.S_3{isAvoid: 1b} run function pf:methods/path_finder/search/direction/s_3
execute positioned ~ ~-2 ~-1 unless entity @e[tag=pf.same, distance=..0.0001] if data storage pf: _.N_0{isVoid: 1b} if data storage pf: _.N_2{isVoid: 1b} unless data storage pf: _.N_2{isWater: 1b} unless data storage pf: _.N_3{isAvoid: 1b} run function pf:methods/path_finder/search/direction/n_3

# 1 Up
execute positioned ~ ~1 ~ unless entity @e[tag=pf.same, distance=..0.0001] if data storage pf: _.0_1{isWater: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.swimCost"]}

# -1 Down
execute positioned ~ ~-1 ~ unless entity @e[tag=pf.same, distance=..0.0001] if data storage pf: _.0_2{isWater: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.swimCost"]}
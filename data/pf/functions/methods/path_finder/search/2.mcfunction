
## Search

# Check
data remove storage pf: _
execute if block ~ ~1 ~ #pf:no_collision_blocks run data modify storage pf: _.canJump set value 1b
execute positioned ~ ~-1 ~ run function pf:methods/path_finder/search/half_check
data modify storage pf: _.isHalf2 set from storage pf: _.isHalf

# Avoid Check
execute unless block ~1 ~ ~ #pf:no_collision_blocks run data modify storage pf: _.E_0.isAvoid set value 1b
execute unless block ~-1 ~ ~ #pf:no_collision_blocks run data modify storage pf: _.W_0.isAvoid set value 1b
execute unless block ~ ~ ~1 #pf:no_collision_blocks run data modify storage pf: _.S_0.isAvoid set value 1b
execute unless block ~ ~ ~-1 #pf:no_collision_blocks run data modify storage pf: _.N_0.isAvoid set value 1b

execute unless block ~1 ~1 ~ #pf:no_collision_blocks run data modify storage pf: _.E_1.isAvoid set value 1b
execute unless block ~-1 ~1 ~ #pf:no_collision_blocks run data modify storage pf: _.W_1.isAvoid set value 1b
execute unless block ~ ~1 ~1 #pf:no_collision_blocks run data modify storage pf: _.S_1.isAvoid set value 1b
execute unless block ~ ~1 ~-1 #pf:no_collision_blocks run data modify storage pf: _.N_1.isAvoid set value 1b

execute unless block ~1 ~-1 ~ #pf:no_collision_blocks run data modify storage pf: _.E_2.isAvoid set value 1b
execute unless block ~-1 ~-1 ~ #pf:no_collision_blocks run data modify storage pf: _.W_2.isAvoid set value 1b
execute unless block ~ ~-1 ~1 #pf:no_collision_blocks run data modify storage pf: _.S_2.isAvoid set value 1b
execute unless block ~ ~-1 ~-1 #pf:no_collision_blocks run data modify storage pf: _.N_2.isAvoid set value 1b

execute unless block ~1 ~-2 ~ #pf:no_collision_blocks run data modify storage pf: _.E_3.isAvoid set value 1b
execute unless block ~-1 ~-2 ~ #pf:no_collision_blocks run data modify storage pf: _.W_3.isAvoid set value 1b
execute unless block ~ ~-2 ~1 #pf:no_collision_blocks run data modify storage pf: _.S_3.isAvoid set value 1b
execute unless block ~ ~-2 ~-1 #pf:no_collision_blocks run data modify storage pf: _.N_3.isAvoid set value 1b

execute unless block ~1 ~-3 ~ #pf:no_collision_blocks run data modify storage pf: _.E_4.isAvoid set value 1b
execute unless block ~-1 ~-3 ~ #pf:no_collision_blocks run data modify storage pf: _.W_4.isAvoid set value 1b
execute unless block ~ ~-3 ~1 #pf:no_collision_blocks run data modify storage pf: _.S_4.isAvoid set value 1b
execute unless block ~ ~-3 ~-1 #pf:no_collision_blocks run data modify storage pf: _.N_4.isAvoid set value 1b

execute unless block ~1 ~ ~1 #pf:no_collision_blocks run data modify storage pf: _.SE_0.isAvoid set value 1b
execute unless block ~-1 ~ ~1 #pf:no_collision_blocks run data modify storage pf: _.SW_0.isAvoid set value 1b
execute unless block ~-1 ~ ~-1 #pf:no_collision_blocks run data modify storage pf: _.NW_0.isAvoid set value 1b
execute unless block ~1 ~ ~-1 #pf:no_collision_blocks run data modify storage pf: _.NE_0.isAvoid set value 1b

execute unless block ~1 ~1 ~1 #pf:no_collision_blocks run data modify storage pf: _.SE_1.isAvoid set value 1b
execute unless block ~-1 ~1 ~1 #pf:no_collision_blocks run data modify storage pf: _.SW_1.isAvoid set value 1b
execute unless block ~-1 ~1 ~-1 #pf:no_collision_blocks run data modify storage pf: _.NW_1.isAvoid set value 1b
execute unless block ~1 ~1 ~-1 #pf:no_collision_blocks run data modify storage pf: _.NE_1.isAvoid set value 1b

execute unless block ~1 ~-1 ~1 #pf:no_collision_blocks run data modify storage pf: _.SE_2.isAvoid set value 1b
execute unless block ~-1 ~-1 ~1 #pf:no_collision_blocks run data modify storage pf: _.SW_2.isAvoid set value 1b
execute unless block ~-1 ~-1 ~-1 #pf:no_collision_blocks run data modify storage pf: _.NW_2.isAvoid set value 1b
execute unless block ~1 ~-1 ~-1 #pf:no_collision_blocks run data modify storage pf: _.NE_2.isAvoid set value 1b

execute unless block ~1 ~-2 ~1 #pf:no_collision_blocks run data modify storage pf: _.SE_3.isAvoid set value 1b
execute unless block ~-1 ~-2 ~1 #pf:no_collision_blocks run data modify storage pf: _.SW_3.isAvoid set value 1b
execute unless block ~-1 ~-2 ~-1 #pf:no_collision_blocks run data modify storage pf: _.NW_3.isAvoid set value 1b
execute unless block ~1 ~-2 ~-1 #pf:no_collision_blocks run data modify storage pf: _.NE_3.isAvoid set value 1b

execute unless block ~1 ~-3 ~1 #pf:no_collision_blocks run data modify storage pf: _.SE_4.isAvoid set value 1b
execute unless block ~-1 ~-3 ~1 #pf:no_collision_blocks run data modify storage pf: _.SW_4.isAvoid set value 1b
execute unless block ~-1 ~-3 ~-1 #pf:no_collision_blocks run data modify storage pf: _.NW_4.isAvoid set value 1b
execute unless block ~1 ~-3 ~-1 #pf:no_collision_blocks run data modify storage pf: _.NE_4.isAvoid set value 1b


# 0 oblique
execute positioned ~1 ~ ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} unless data storage pf: _.E_0{isAvoid: 1b} unless data storage pf: _.SE_0{isAvoid: 1b} if data storage pf: _.SE_2{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.obliqueDirectionCost"]}
execute positioned ~-1 ~ ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} unless data storage pf: _.W_0{isAvoid: 1b} unless data storage pf: _.SW_0{isAvoid: 1b} if data storage pf: _.SW_2{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.obliqueDirectionCost"]}
execute positioned ~-1 ~ ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} unless data storage pf: _.W_0{isAvoid: 1b} unless data storage pf: _.NW_0{isAvoid: 1b} if data storage pf: _.NW_2{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.obliqueDirectionCost"]}
execute positioned ~1 ~ ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} unless data storage pf: _.E_0{isAvoid: 1b} unless data storage pf: _.NE_0{isAvoid: 1b} if data storage pf: _.NE_2{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.obliqueDirectionCost"]}

# 1 oblique
execute if data storage pf: _{canJump:1b} positioned ~1 ~1 ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} unless data storage pf: _.S_1{isAvoid: 1b} unless data storage pf: _.E_0{isAvoid: 1b} unless data storage pf: _.E_1{isAvoid: 1b} unless data storage pf: _.SE_1{isAvoid: 1b} if data storage pf: _.SE_0{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.obliqueDirectionCost"]}
execute if data storage pf: _{canJump:1b} positioned ~-1 ~1 ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} unless data storage pf: _.S_1{isAvoid: 1b} unless data storage pf: _.W_0{isAvoid: 1b} unless data storage pf: _.W_1{isAvoid: 1b} unless data storage pf: _.SW_1{isAvoid: 1b} if data storage pf: _.SW_0{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.obliqueDirectionCost"]}
execute if data storage pf: _{canJump:1b} positioned ~-1 ~1 ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} unless data storage pf: _.N_1{isAvoid: 1b} unless data storage pf: _.W_0{isAvoid: 1b} unless data storage pf: _.W_1{isAvoid: 1b} unless data storage pf: _.NW_1{isAvoid: 1b} if data storage pf: _.NW_0{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.obliqueDirectionCost"]}
execute if data storage pf: _{canJump:1b} positioned ~1 ~1 ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} unless data storage pf: _.N_1{isAvoid: 1b} unless data storage pf: _.E_0{isAvoid: 1b} unless data storage pf: _.E_1{isAvoid: 1b} unless data storage pf: _.NE_1{isAvoid: 1b} if data storage pf: _.NE_0{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.obliqueDirectionCost"]}

# -1 oblique
execute positioned ~1 ~-1 ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} unless data storage pf: _.E_0{isAvoid: 1b} unless data storage pf: _.SE_0{isAvoid: 1b} unless data storage pf: _.SE_2{isAvoid: 1b} if data storage pf: _.SE_3{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.obliqueDirectionCost"]}
execute positioned ~-1 ~-1 ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} unless data storage pf: _.W_0{isAvoid: 1b} unless data storage pf: _.SW_0{isAvoid: 1b} unless data storage pf: _.SW_2{isAvoid: 1b} if data storage pf: _.SW_3{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.obliqueDirectionCost"]}
execute positioned ~-1 ~-1 ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} unless data storage pf: _.W_0{isAvoid: 1b} unless data storage pf: _.NW_0{isAvoid: 1b} unless data storage pf: _.NW_2{isAvoid: 1b} if data storage pf: _.NW_3{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.obliqueDirectionCost"]}
execute positioned ~1 ~-1 ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} unless data storage pf: _.E_0{isAvoid: 1b} unless data storage pf: _.NE_0{isAvoid: 1b} unless data storage pf: _.NE_2{isAvoid: 1b} if data storage pf: _.NE_3{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.obliqueDirectionCost"]}

# -2 oblique
execute positioned ~1 ~-2 ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} unless data storage pf: _.E_0{isAvoid: 1b} unless data storage pf: _.SE_0{isAvoid: 1b} unless data storage pf: _.SE_2{isAvoid: 1b} unless data storage pf: _.SE_2{isWater: 1b} unless block ~ ~1 ~ water unless data storage pf: _.SE_3{isAvoid: 1b} if data storage pf: _.SE_4{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.obliqueDirectionCost"]}
execute positioned ~-1 ~-2 ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} unless data storage pf: _.W_0{isAvoid: 1b} unless data storage pf: _.SW_0{isAvoid: 1b} unless data storage pf: _.SW_2{isAvoid: 1b} unless data storage pf: _.SW_2{isWater: 1b} unless block ~ ~1 ~ water unless data storage pf: _.SW_3{isAvoid: 1b} if data storage pf: _.SW_4{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.obliqueDirectionCost"]}
execute positioned ~-1 ~-2 ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} unless data storage pf: _.W_0{isAvoid: 1b} unless data storage pf: _.NW_0{isAvoid: 1b} unless data storage pf: _.NW_2{isAvoid: 1b} unless data storage pf: _.NW_2{isWater: 1b} unless block ~ ~1 ~ water unless data storage pf: _.NW_3{isAvoid: 1b} if data storage pf: _.NW_4{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.obliqueDirectionCost"]}
execute positioned ~1 ~-2 ~-1 unless entity @e[tag=pf.Name, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} unless data storage pf: _.E_0{isAvoid: 1b} unless data storage pf: _.NE_0{isAvoid: 1b} unless data storage pf: _.NE_2{isAvoid: 1b} unless data storage pf: _.NE_2{isWater: 1b} unless block ~ ~1 ~ water unless data storage pf: _.NE_3{isAvoid: 1b} if data storage pf: _.NE_4{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.obliqueDirectionCost"]}


# 0
execute positioned ~1 ~ ~ unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.E_0{isAvoid: 1b} if data storage pf: _.E_2{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init"]}
execute positioned ~-1 ~ ~ unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.W_0{isAvoid: 1b} if data storage pf: _.W_2{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init"]}
execute positioned ~ ~ ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} if data storage pf: _.S_2{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init"]}
execute positioned ~ ~ ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} if data storage pf: _.N_2{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init"]}

# 1
execute if data storage pf: _{canJump:1b} positioned ~1 ~1 ~ unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.E_1{isAvoid: 1b} if data storage pf: _.E_0{isAvoid: 1b} run data remove storage pf: _.isJumpNow

execute if data storage pf: _{canJump:1b} positioned ~-1 ~1 ~ unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.W_1{isAvoid: 1b} if data storage pf: _.W_0{isAvoid: 1b} run data remove storage pf: _.isJumpNow

execute if data storage pf: _{canJump:1b} positioned ~ ~1 ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_1{isAvoid: 1b} if data storage pf: _.S_0{isAvoid: 1b} run data remove storage pf: _.isJumpNow

execute if data storage pf: _{canJump:1b} positioned ~ ~1 ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_1{isAvoid: 1b} if data storage pf: _.N_0{isAvoid: 1b} run data remove storage pf: _.isJumpNow


# -1
execute positioned ~1 ~-1 ~ unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.E_0{isAvoid: 1b} unless data storage pf: _.E_2{isAvoid: 1b} if data storage pf: _.E_3{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init"]}
execute positioned ~-1 ~-1 ~ unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.W_0{isAvoid: 1b} unless data storage pf: _.W_2{isAvoid: 1b} if data storage pf: _.W_3{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init"]}
execute positioned ~ ~-1 ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} unless data storage pf: _.S_2{isAvoid: 1b} if data storage pf: _.S_3{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init"]}
execute positioned ~ ~-1 ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} unless data storage pf: _.N_2{isAvoid: 1b} if data storage pf: _.N_3{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init"]}

# -2
execute positioned ~1 ~-2 ~ unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.E_0{isAvoid: 1b} unless data storage pf: _.E_2{isAvoid: 1b} unless data storage pf: _.E_2{isWater: 1b} unless block ~ ~1 ~ water unless data storage pf: _.E_3{isAvoid: 1b} if data storage pf: _.E_4{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init"]}
execute positioned ~-1 ~-2 ~ unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.W_0{isAvoid: 1b} unless data storage pf: _.W_2{isAvoid: 1b} unless data storage pf: _.W_2{isWater: 1b} unless block ~ ~1 ~ water unless data storage pf: _.W_3{isAvoid: 1b} if data storage pf: _.W_4{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init"]}
execute positioned ~ ~-2 ~1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.S_0{isAvoid: 1b} unless data storage pf: _.S_2{isAvoid: 1b} unless data storage pf: _.S_2{isWater: 1b} unless block ~ ~1 ~ water unless data storage pf: _.S_3{isAvoid: 1b} if data storage pf: _.S_4{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init"]}
execute positioned ~ ~-2 ~-1 unless entity @e[tag=pf.same, distance=..0.0001] unless data storage pf: _.N_0{isAvoid: 1b} unless data storage pf: _.N_2{isAvoid: 1b} unless data storage pf: _.N_2{isWater: 1b} unless block ~ ~1 ~ water unless data storage pf: _.N_3{isAvoid: 1b} if data storage pf: _.N_4{isAvoid: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init"]}

# 1 Up
execute positioned ~ ~1 ~ unless entity @e[tag=pf.same, distance=..0.0001] if block ~ ~1 ~ water run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.swimCost"]}

# -1 Down
execute positioned ~ ~-1 ~ unless entity @e[tag=pf.same, distance=..0.0001] if block ~ ~-1 ~ water run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.swimCost"]}
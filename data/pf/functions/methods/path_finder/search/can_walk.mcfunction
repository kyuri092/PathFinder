
## Can Walk

execute positioned ~ ~-1 ~ run function pf:methods/path_finder/search/can_walk_check
execute if data storage pf: _{canWalk: 1b} unless data storage pf: _{isJumpNow: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init"]}
execute if data storage pf: _{canWalk: 1b} if data storage pf: _{isJumpNow: 1b} unless data storage pf: _{isHalf2: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init"]}
execute if data storage pf: _{canWalk: 1b} if data storage pf: _{isJumpNow: 1b} if data storage pf: _{isHalf2: 1b} run function pf:methods/path_finder/search/half
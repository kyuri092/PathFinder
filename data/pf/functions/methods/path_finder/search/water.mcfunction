
## Water

function pf:methods/path_finder/search/water_check
execute if data storage pf: _{isWater: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init", "pf.swimCost"]}
execute unless data storage pf: _{isWater: 1b} run function pf:methods/path_finder/search/can_walk
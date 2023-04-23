
## Half

execute positioned ~ ~-1 ~ run function pf:methods/path_finder/search/half_check
execute if data storage pf: _{isHalf: 1b} run summon marker ~ ~ ~ {Tags: ["pf.M", "pf.same", "pf.init"]}
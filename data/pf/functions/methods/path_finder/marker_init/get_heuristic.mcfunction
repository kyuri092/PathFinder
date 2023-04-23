
## Get Distance Heuristic

function pf:methods/path_finder/get_pos/1

scoreboard players operation _ pf.number = $x2 pf.number
scoreboard players operation _ pf.number -= $x pf.number
scoreboard players operation _ pf.number *= _ pf.number

scoreboard players operation _2 pf.number = $y2 pf.number
scoreboard players operation _2 pf.number -= $y pf.number
scoreboard players operation _2 pf.number *= _2 pf.number
scoreboard players operation _ pf.number += _2 pf.number

scoreboard players operation _2 pf.number = $z2 pf.number
scoreboard players operation _2 pf.number -= $z pf.number
scoreboard players operation _2 pf.number *= _2 pf.number
scoreboard players operation _ pf.number += _2 pf.number

execute store result storage math: in double 0.0001 run scoreboard players get _ pf.number
function #math:sqrt
execute store result score @s pf.heuristic run data get storage math: out 100
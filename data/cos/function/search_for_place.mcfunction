scoreboard players set @s _ 150
scoreboard players set @s __ 20
scoreboard players set @s _1 1
execute at @s if score @s ___ > @s __ run scoreboard players set @s ___ 0
execute at @s if score @s ___ < @s _1 run scoreboard players set @s ___ 0

execute at @s in minecraft:overworld run spreadplayers ~ ~ 0 500 false Vastosine
execute at @s store result score @s have_structure run locate structure #cos:good_start_structure
execute at @s if score @s have_structure < @s _ run scoreboard players set @s ___ 0
execute at @s if score @s have_structure < @s _ run return run say find it

say 1

execute at @s if score @s ___ >= @s __ run return run scoreboard players set @s ___ 0
scoreboard players operation @s ___ += @s _1 
function cos:search_for_place
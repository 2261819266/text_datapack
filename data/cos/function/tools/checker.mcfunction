scoreboard players set @s _ 100

tellraw @a "\u00a7achecking......"

execute at @s store result score @s have_structure run locate structure #cos:good_start_structure
execute if score @s have_structure < @s _ run return run say there has been a good structure below the distance of 100 meters

tellraw @a "\u00a7achanging......"

# function cos:reset
execute at @s in minecraft:overworld run spreadplayers ~ ~ 0 100 false Vastosine
tp @a @s

execute at @s store result score @s have_structure run locate structure #cos:good_start_structure

function cos:tools/checker
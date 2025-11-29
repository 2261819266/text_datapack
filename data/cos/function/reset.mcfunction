scoreboard players set @s success 0
scoreboard players set @s _0 0

say start

execute at @s in minecraft:overworld run spreadplayers 0 0 0 16000 false Vastosine

function cos:search/search


execute at @s in minecraft:overworld store success score @s success run \
  spreadplayers ~ ~ 0 1 false Vastosine
execute if score @s success = @s _0 run say fail 1
execute at @s if score @s success = @s _0 in minecraft:overworld store success score @s success run \
  spreadplayers ~ ~ 0 10 false Vastosine
execute if score @s success = @s _0 run say fail 10
execute at @s if score @s success = @s _0 in minecraft:overworld store success score @s success run \
  spreadplayers ~ ~ 0 20 false Vastosine
execute if score @s success = @s _0 run say fail 20
execute at @s if score @s success = @s _0 in minecraft:overworld store success score @s success run \
  spreadplayers ~ ~ 0 40 false Vastosine
execute if score @s success = @s _0 run say fail 40
execute at @s if score @s success = @s _0 in minecraft:overworld store success score @s success run \
  spreadplayers ~ ~ 0 60 false Vastosine
execute if score @s success = @s _0 run say fail 60
execute at @s if score @s success = @s _0 in minecraft:overworld store success score @s success run \
  return run function cos:reset
say success

execute at @s in minecraft:overworld run spreadplayers ~ ~ 0 20 false Vastosine

execute at Vastosine run setworldspawn
tp @a Vastosine
function cos:reset_status
team leave @a
function cos:player/give_selection
scoreboard players set @s _0 0

execute if score @s waiting_time >= @s wait_time run return run scoreboard players set @s waiting_time 0
execute if score @s waiting_time < @s _0 run scoreboard players set @s waiting_time 0
scoreboard players add @s waiting_time 1
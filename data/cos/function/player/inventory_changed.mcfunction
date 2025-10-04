# 如果玩家死亡，直接返回
execute if data entity @s {Health:0.0f} run \
    return run advancement revoke @s only cos:detect/inventory_changed

execute if entity @s[gamemode=spectator] run \
    return run advancement revoke @s only cos:detect/inventory_changed

execute if entity @s[advancements={cos:detect/fix=true}] run \
    return run advancement revoke @s only cos:detect/inventory_changed

execute if entity @s[team=!runners,team=!hunters,gamemode=survival] run tellraw @s ["你已加入 \u00a7a[runners]"]
execute if entity @s[team=!runners,team=!hunters,gamemode=survival] run trigger mh.join.runners





advancement revoke @s only cos:detect/inventory_changed
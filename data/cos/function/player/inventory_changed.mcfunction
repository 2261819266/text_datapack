advancement revoke @s only cos:detect/inventory_changed

# 如果玩家死亡，直接返回
execute if data entity @s {Health:0.0f} run return fail
execute if entity @s[gamemode=!survival] run return fail
execute unless entity @s[team=!runners,team=!hunters] run return fail

# execute anchored eyes positioned ^ ^ ^ as @e[type=item,distance=0..6,nbt={Item:{components:{"minecraft:custom_data":{selector:{name:"runners"}}}}}] 

execute unless data entity @s Inventory[1] run function cos:player/give_selection

execute if items entity @e[type=item,distance=0..6] contents *[minecraft:custom_data~{"selector":{"name": "hunters"}}] run function cos:player/select_hunters
execute if items entity @e[type=item,distance=0..6] contents *[minecraft:custom_data~{"selector":{"name": "runners"}}] run function cos:player/select_runners










# execute if entity @s[advancements={cos:detect/fix=true}] run return fail
# execute if entity @s[team=!runners,team=!hunters,gamemode=survival] run tellraw @s ["你已加入 \u00a7a[runners]"]
# execute if entity @s[team=!runners,team=!hunters,gamemode=survival] run trigger mh.join.runners
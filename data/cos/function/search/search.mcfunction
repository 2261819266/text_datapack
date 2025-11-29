scoreboard players set @s distance_set 70

execute if function cos:search/check run return run function cos:search/tell

scoreboard players operation @s _ = @s have_structure

# say 0

execute at @s run tp @s ~10 ~ ~
execute if function cos:search/check run return run function cos:search/tell
execute if function cos:search/compare run return run function cos:search/search

# say 1

execute at @s run tp @s ~-20 ~ ~
execute if function cos:search/check run return run function cos:search/tell
execute if function cos:search/compare run return run function cos:search/search

# say 2

execute at @s run tp @s ~10 ~ ~10
execute if function cos:search/check run return run function cos:search/tell
execute if function cos:search/compare run return run function cos:search/search

# say 3

execute at @s run tp @s ~ ~ ~-20
execute if function cos:search/check run return run function cos:search/tell
execute if function cos:search/compare run return run function cos:search/search

# say 4

execute at @s run tp @s ~ ~ ~10
# function cos:search/search
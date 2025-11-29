execute at @s store result score @s have_structure run locate structure #cos:good_start_structure
# execute if score @s have_structure <= @s distance_set run say have
execute if score @s have_structure <= @s distance_set run return 1
return 0
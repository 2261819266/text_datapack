function cos:schedule_function/show_hunters
trigger mh.join.hunters
tellraw @s "you have joined \u00a7c[hunters]"
function cos:player/clear_selection_status
schedule function cos:schedule_function/clear 2s append
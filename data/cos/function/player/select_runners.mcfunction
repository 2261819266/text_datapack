function cos:schedule_function/show_runners
trigger mh.join.runners
tellraw @s "you have joined \u00a7a[runners]"
function cos:player/clear_selection_status
schedule function cos:schedule_function/clear 2s append

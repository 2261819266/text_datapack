execute in minecraft:overworld run spreadplayers 0 0 0 16000 false Vastosine
execute at Vastosine run setworldspawn
tp @a Vastosine
function cos:reset_status
team leave @a
function cos:player/give_selection
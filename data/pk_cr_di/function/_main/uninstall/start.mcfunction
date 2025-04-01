#> pk_cr_di:_main/uninstall/start

# @return Check if an uninstalling process is already running
execute if score $uninstall pk.value matches 1 run return run tellraw @s {text: "An uninstalling process is already running",color:"red"}

# Set uninstalling process score
scoreboard players set $uninstall pk.value 1

# Mark player
tag @s add pk.uninstall

# Remove pot'als
function pk_cr_di:_main/uninstall/feature/start {feature_storage_path:"pk:cr_di database.blocks.pot_als",callback:"function pk_cr_di:_main/uninstall/callback/after_removing_pot_als",feature_id:"pot_al"}
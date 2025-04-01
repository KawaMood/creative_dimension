#> pk_cr_di:_main/recreate/start
#
# @input args
#   feature: string
#       Feature to recreate


# @return Check if an recreateing process is already running
execute if score $recreate pk.value matches 1 run return run tellraw @s {text: "A recreating process is already running",color:"red"}

# Prepare the args depending on features to recreate
data remove storage pk:common recreate.feature_args
$data modify storage pk:common recreate.feature_args.feature_id set value "$(feature)"
#   Pot'als
execute if data storage pk:common recreate.feature_args{feature_id:"pot_al"} run data modify storage pk:common recreate.feature_args merge value {feature_storage_path:"pk:cr_di database.blocks.pot_als",callback:"function pk_cr_di:_main/recreate/stop"}
#   Creative Portals
execute if data storage pk:common recreate.feature_args{feature_id:"portal"} run data modify storage pk:common recreate.feature_args merge value {feature_storage_path:"pk:cr_di database.features.portals",callback:"function pk_cr_di:_main/recreate/stop"}

# @return If feature not found
execute unless data storage pk:common recreate.feature_args.feature_storage_path run return run tellraw @s {text: "This feature doesn't exist",color:"red"}

# Set recreateing process score
scoreboard players set $recreate pk.value 1

# Mark player
tag @s add pk.recreate

# Recreate features
execute if data storage pk:common recreate.feature_args.feature_storage_path run function pk_cr_di:_main/recreate/feature/start with storage pk:common recreate.feature_args
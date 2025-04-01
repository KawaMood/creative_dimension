#> pk_cr_di:_main/recreate/feature/7
#
# @input args
#   feature_id: string
#       The feature id
#
# @reads storage pk:common recreate
#   feature.single: entry
#       Data of the current treated feature (block, feature...) from the list
#
# @context at the feature location after being fully loaded

# Recreate the current feature
$function pk_cr_di:_main/recreate/feature/single/$(feature_id)

# Unload the chunk if needed
execute if score $recreate.is_forceloaded pk.temp matches 0 run forceload remove ~ ~

# Logs
tellraw @a[tag=pk.recreate] [{text: "Recreated \"",color: "gray"},{nbt:"recreate.feature_args.feature_id",storage:"pk:common"},{text: "\" at ["},{nbt:"recreate.feature_single.location.x",storage:"pk:common"},{text: ","},{nbt:"recreate.feature_single.location.y",storage:"pk:common"},{text: ","},{nbt:"recreate.feature_single.location.z",storage:"pk:common"},{text: "] in "},{nbt:"recreate.feature_single.location.dimension",storage:"pk:common"}]

# Recursive call
function pk_cr_di:_main/recreate/feature/recursive
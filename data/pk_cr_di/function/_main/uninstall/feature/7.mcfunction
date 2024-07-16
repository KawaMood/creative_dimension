#> pk_cr_di:_main/uninstall/feature/7
#
# @input args
#   feature_id: string
#       The feature id
#
# @reads storage pk:common uninstall
#   feature.single: entry
#       Data of the current treated feature (block, feature...) from the list
#
# @context at the feature location after being fully loaded

# Delete the current feature
$function pk_cr_di:_main/uninstall/feature/single/$(feature_id)

# Unload the chunk if needed
execute if score $uninstall.is_forceloaded pk.temp matches 0 run forceload remove ~ ~

# Logs
tellraw @a[tag=pk.uninstall] [{"text": "Removed \"","color": "gray"},{"nbt":"uninstall.feature_args.feature_id","storage":"pk:common"},{"text": "\" at ["},{"nbt":"uninstall.feature_single.location.x","storage":"pk:common"},{"text": ","},{"nbt":"uninstall.feature_single.location.y","storage":"pk:common"},{"text": ","},{"nbt":"uninstall.feature_single.location.z","storage":"pk:common"},{"text": "] in "},{"nbt":"uninstall.feature_single.location.dimension","storage":"pk:common"}]

# Recursive call
function pk_cr_di:_main/uninstall/feature/recursive
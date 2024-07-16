#> pk_cr_di:_main/uninstall/feature/start
#
# @input args
#   feature_storage_path: string
#       Path to the feature to remove
#   delete_function: string
#       Path to the function to run to delete the block
#   feature_id: string
#       Feature name

# Set data
data remove storage pk:common uninstall.feature_args
$data modify storage pk:common uninstall.feature_args.callback set value "$(callback)"
$data modify storage pk:common uninstall.feature_args.feature_id set value "$(feature_id)"
data remove storage pk:common uninstall.destructive.list
$data modify storage pk:common uninstall.destructive.list set from storage $(feature_storage_path)

# Set score
scoreboard players set $uninstall.list.length pk.temp 0
execute store result score $uninstall.list.length pk.temp run data get storage pk:common uninstall.destructive.list

# Directly run the callback function if the features list is empty
execute if score $uninstall.list.length pk.temp matches 0 unless data storage pk:common uninstall.feature_args{callback:""} run function pk_cr_di:_main/uninstall/callback with storage pk:common uninstall.feature_args

# Uninstall features recursively
execute if score $uninstall.list.length pk.temp matches 1.. run function pk_cr_di:_main/uninstall/feature/1
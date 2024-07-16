#> pk_cr_di:_main/recreate/feature/start
#
# @input args
#   feature_storage_path: string
#       Path to the feature to remove

# Set data
$data modify storage pk:common recreate.destructive.list set from storage $(feature_storage_path)

# Set score
scoreboard players set $recreate.list.length pk.temp 0
execute store result score $recreate.list.length pk.temp run data get storage pk:common recreate.destructive.list

# Directly run the callback function if the features list is empty
execute if score $recreate.list.length pk.temp matches 0 unless data storage pk:common recreate.feature_args{callback:""} run function pk_cr_di:_main/recreate/callback with storage pk:common recreate.feature_args

# Recreate features recursively
execute if score $recreate.list.length pk.temp matches 1.. run function pk_cr_di:_main/recreate/feature/1
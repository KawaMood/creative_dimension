#> pk_cr_di:_main/recreate/feature/1
#
# Check if the dimension the current feature is in still exists
#
# @input storage pk:common temp.destructive
#   list: array
#       List of features to remove

# Store the current feature's data
data modify storage pk:common recreate.feature_single set from storage pk:common recreate.destructive.list[-1]

# Check if the dimension still exists
scoreboard players set $recreate.dimension_found pk.temp 0
execute store result score $recreate.dimension_found pk.temp run function pk_cr_di:_main/recreate/is_dimension_set with storage pk:common recreate.feature_single.location
#   Skip feature if not found
execute if score $recreate.dimension_found pk.temp matches 0 run function pk_cr_di:_main/recreate/feature/recursive
#   Load area if found
execute if score $recreate.dimension_found pk.temp matches 1 run function pk_cr_di:_main/recreate/feature/2 with storage pk:common recreate.feature_single.location
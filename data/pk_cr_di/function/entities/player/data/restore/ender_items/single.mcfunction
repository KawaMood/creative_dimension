#> pk_cr_di:entities/player/data/restore/ender_items/single
#
# @input args
#   slot: int
#       Numerical slot (0)

data modify storage pk:common package.dynamic_item.args set value {components:{}}
$data modify storage pk:common package.dynamic_item.args merge from storage pk:common temp.player_data.ender_items[{Slot:$(slot)b}]
$data modify storage pk:common package.dynamic_item.args.slot set value "enderchest.$(slot)"
execute if data storage pk:common package.dynamic_item.args.id run function pk_cr_di:packages/dynamic_item/replace with storage pk:common package.dynamic_item.args
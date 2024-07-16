#> pk_cr_di:entities/player/data/restore/inventory/single
#
# @input args
#   slot: int
#       Numerical slot (0)
#   slot_type: string
#       Slot type ("container.0")
#   subpath: string
#       Subpath from root ("inventory" or "enderitems")

data modify storage pk:common package.dynamic_item.args set value {components:{}}
$data modify storage pk:common package.dynamic_item.args merge from storage pk:common temp.player_data.$(subpath)[{Slot:$(slot)b}]
$data modify storage pk:common package.dynamic_item.args.slot set value $(slot_type)
execute if data storage pk:common package.dynamic_item.args.id run function pk_cr_di:packages/dynamic_item/replace with storage pk:common package.dynamic_item.args
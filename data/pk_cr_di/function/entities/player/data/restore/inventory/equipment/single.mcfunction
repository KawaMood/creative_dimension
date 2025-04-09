#> pk_cr_di:entities/player/data/restore/equipment/single
#
# @input args
#   slot: string
#       Equipment slot ("head")
#   slot_type: string
#       Slot type ("armor.head")

data modify storage pk:common package.dynamic_item.args set value {components:{}}
$data modify storage pk:common package.dynamic_item.args merge from storage pk:common temp.player_data.equipment.$(slot)
$data modify storage pk:common package.dynamic_item.args.slot set value $(slot_type)
execute if data storage pk:common package.dynamic_item.args.id run function pk_cr_di:packages/dynamic_item/replace with storage pk:common package.dynamic_item.args
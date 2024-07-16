#> pk_cr_di:blocks/pot_al/actions/break/loot_item
#
# Drop the stored item
#
# @input temp.pot_al: Pot_al
#       Data of the pot_al the clicked interaction belongs to

data modify storage pk:common package.dynamic_item.args set value {apply_random_motion:1b}
data modify storage pk:common package.dynamic_item.args.entity_data.Item set from storage pk:common temp.pot_al.item
function pk_cr_di:packages/dynamic_item/drop/_run
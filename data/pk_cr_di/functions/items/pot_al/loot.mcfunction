#> pk_cr_di:items/pot_al/loot

function pk_cr_di:items/pot_al/attributes
data modify storage pk:common package.dynamic_item.args set value {apply_random_motion:1b}
data modify storage pk:common package.dynamic_item.args.entity_data.Item set from storage pk:common temp.attributes
function pk_cr_di:packages/dynamic_item/drop/_run
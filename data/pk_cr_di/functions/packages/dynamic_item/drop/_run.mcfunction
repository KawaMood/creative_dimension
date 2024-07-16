#> pk_cr_di:packages/dynamic_item/drop/_run
#
# Dynamically summon an item entity
#
# @writes storage pk:common package.dynamic_item.args
#       entity_data: entry
#           Data to set to the item entity
#       apply_random_motion: boolean
#           Must be true to apply a random motion to the item entity (like when you mine a block)

# Set Motion if needed
execute unless data storage pk:common package.dynamic_item.args.entity_data.Motion run data modify storage pk:common package.dynamic_item.args.entity_data.Motion set value [0d,0d,0d]
execute if data storage pk:common package.dynamic_item.args{apply_random_motion:1b} run function pk_cr_di:packages/dynamic_item/drop/apply_random_motion

# Set default count and id
execute unless data storage pk:common package.dynamic_item.args.entity_data.Item.count run data modify storage pk:common package.dynamic_item.args.entity_data.Item.count set value 1
execute unless data storage pk:common package.dynamic_item.args.entity_data.Item.id run data modify storage pk:common package.dynamic_item.args.entity_data.Item.id set value "minecraft:air"

# Summon item
function pk_cr_di:packages/dynamic_item/drop/summon_item with storage pk:common package.dynamic_item.args

# Clear data
data remove storage pk:common package.dynamic_item.args
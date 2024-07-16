#> pk_cr_di:blocks/pot_al/entities/potted_block/update/_run
#
# Update entity's "item" data and repare args to run the right update function dynamically to apply transformations
#
# @input storage pk:common temp.pot_al: Pot_al
#   The pot'al's data
#
# @context entity to update

# Update entity's block states
#   No item
data modify entity @s block_state set value {}
execute unless data storage pk:common temp.pot_al.item.id run return 1
#   @continue from item
data modify entity @s block_state.Name set from storage pk:common temp.pot_al.item.id

# Apply specific properties
#   Oak sapling
data modify entity @s transformation merge value {translation:[-.325f,0f,-.325f],scale:[0.65f,0.65f,0.65f]}
#   Bamboo
execute if data storage pk:common temp.pot_al.item{id:"minecraft:bamboo"} run data modify entity @s block_state.Properties set value {leaves:"small"}
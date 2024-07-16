#> pk_cr_di:blocks/pot_al/actions/swap_item/_run
#
# Try to exchange the player item with the pot'al's item
#
# @writes temp.pot_al: Pot_al
#       Data of the pot'al the clicked interaction belongs to
#
# @writes temp.action_args
#       pot_al_new_item: Item or empty entry
#           New item to set in the pot'al
#
# @context clicked interaction at @s
#   Triggering player is marked with the tag "pk.current.player"

# Define scores
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id

# Reset update args data
data remove storage pk:common temp.action_args

# Try to define pot_al_new_item
execute as @a[tag=pk.current.player,limit=1,distance=..65] run function pk_cr_di:blocks/pot_al/actions/swap_item/define_new_pot_al_item
#   @return fail if the player holds an unacceptable item
execute unless data storage pk:common temp.action_args.pot_al_new_item run return fail

# @continue Search pot'al of the current interaction
data remove storage pk:common temp.pot_al
data modify storage pk:common package.dynamic_command.args set value {p1:"data modify storage pk:common temp.pot_al set from storage pk:cr_di database.blocks.pot_als[{id:",p2:"}]"}
execute store result storage pk:common package.dynamic_command.args.v1 int 1 run scoreboard players get $temp pk.custom_block.component.id
function pk_cr_di:packages/dynamic_command/1_var with storage pk:common package.dynamic_command.args
#   @return fail if pot'al not found in database
execute unless data storage pk:common temp.pot_al run return fail

# @continue Define prev_pot_al_item
data modify storage pk:common temp.prev_pot_al_item set from storage pk:common temp.pot_al.item
#   @return fail
#       if both player and clicked pot'al slot have no item
execute unless data storage pk:common temp.action_args.pot_al_new_item.id unless data storage pk:common temp.prev_pot_al_item.id run return fail
#       if both player and clicked pot'al have items
execute if data storage pk:common temp.action_args.pot_al_new_item.id if data storage pk:common temp.prev_pot_al_item.id run return fail

# @continue Update data
data modify storage pk:common temp.pot_al.item set from storage pk:common temp.action_args.pot_al_new_item
function pk_cr_di:blocks/pot_al/data/update

# Update the block_display entity
execute as @e[type=block_display,tag=pk.cr_di.block.pot_al.potted_block,predicate=pk_cr_di:scores/custom_block/component_id_match,limit=1,distance=..2] run function pk_cr_di:blocks/pot_al/entities/potted_block/update/_run

# Change item of the mainhand of the clicker if it set one
#   Player put item
execute if data storage pk:common temp.pot_al.item.id run function pk_cr_di:blocks/pot_al/actions/swap_item/put
#   Player take item
execute unless data storage pk:common temp.pot_al.item.id run function pk_cr_di:blocks/pot_al/actions/swap_item/take
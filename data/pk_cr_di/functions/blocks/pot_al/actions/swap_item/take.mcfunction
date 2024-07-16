#> pk_cr_di:blocks/pot_al/actions/swap_item/take
#
# Take event
#
# @read temp.prev_pot_al_item: Item
#       Item that was in the pot'al
#
# @context clicked interaction at @s
#   Triggering player is marked with the tag "pk.current.player"

# Cancel activation
tag @s remove pk.cr_di.block.pot_al.activating
execute as @e[type=marker,tag=pk.cr_di.block.pot_al.controller,predicate=pk_cr_di:scores/custom_block/component_id_match,limit=1,distance=..2] at @s run function pk_cr_di:blocks/pot_al/behavior/activating/cancel

# Give item to the clicker
data modify storage pk:common temp.dynamic_item_args set value {components:{},slot:"weapon.mainhand"}
data modify storage pk:common temp.dynamic_item_args merge from storage pk:common temp.prev_pot_al_item
execute as @a[tag=pk.current.player,limit=1,distance=..65] run function pk_cr_di:packages/dynamic_item/replace with storage pk:common temp.dynamic_item_args

# Animations
execute if score $action.take pk.temp matches 1.. run playsound entity.item_frame.remove_item block @a[x=0]
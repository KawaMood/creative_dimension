#> pk_cr_di:blocks/pot_al/actions/swap_item/put
#
# Put event
#
# @context clicked interaction at @s
#   Triggering player is marked with the tag "pk.current.player"

# Animation
playsound block.decorated_pot.insert block @a[x=0]

# Mark entities
tag @s add pk.cr_di.block.pot_al.activating
tag @e[type=marker,tag=pk.cr_di.block.pot_al.controller,predicate=pk_cr_di:scores/custom_block/component_id_match,limit=1,distance=..2] add pk.cr_di.block.pot_al.activating 

# Reduce count of the item in the clicker's mainhand
item modify entity @a[tag=pk.current.player,limit=1,distance=..65] weapon.mainhand [{function:"minecraft:set_count",count:-1,add:true}]
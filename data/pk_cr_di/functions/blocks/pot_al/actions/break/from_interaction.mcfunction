#> pk_cr_di:blocks/pot_al/actions/break/from_interaction
#
# Search the current pot'al's controller to continue the breaking process from it
#
# @context clicked interaction at @s
#   Triggering player is marked with the tag "pk.current.player"

scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id
execute as @e[type=marker,tag=pk.cr_di.block.pot_al.controller,predicate=pk_cr_di:scores/custom_block/component_id_match,distance=..2] at @s run function pk_cr_di:blocks/pot_al/actions/break/from_controller
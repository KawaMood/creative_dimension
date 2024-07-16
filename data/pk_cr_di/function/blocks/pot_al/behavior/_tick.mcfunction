#> pk_cr_di:blocks/pot_al/behavior/_tick
#
# Main tick for pot'al's controller
#
# @context the controller of a pot'al at @s

# Environment
execute unless block ~ ~ ~ player_head run function pk_cr_di:blocks/pot_al/actions/break/from_controller

# Activating process
execute if entity @s[tag=pk.cr_di.block.pot_al.activating] run function pk_cr_di:blocks/pot_al/behavior/activating/_tick
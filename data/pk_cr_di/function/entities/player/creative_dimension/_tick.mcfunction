#> pk_cr_di:entities/player/creative_dimension/_tick
#
# @context a player in the creative dimension at @s

# If player leaved the creative dimension or respawned somewhere else
execute if entity @s[predicate=!pk_cr_di:location/dimension/creative_dimension] run function pk_cr_di:entities/player/creative_dimension/leave

# Prepare to leave the creative dimension if the player get the slow falling effect
execute if entity @s[tag=pk.cr_di.prepare_leave.creative_dimension] run function pk_cr_di:entities/player/creative_dimension/prepare_leave/_tick
tag @s[tag=!pk.cr_di.prepare_leave.creative_dimension,predicate=pk_cr_di:effects/slow_falling] add pk.cr_di.prepare_leave.creative_dimension

# Clear blacklisted items
execute unless entity @s[tag=pk.cr_di.ignore_blacklisted_items] run function pk_cr_di:entities/player/creative_dimension/clear_blacklisted_item
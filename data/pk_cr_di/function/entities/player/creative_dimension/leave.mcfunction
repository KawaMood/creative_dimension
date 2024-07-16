#> pk_cr_di:entities/player/creative_dimension/leave
#
# Triggers when a player leaves the creative dimension in any way (from a changed_dimension trigger)
#
# @context a player at @s

# Mark player
tag @s remove pk.cr_di.in_creative_dimension

# Clear effect
effect clear @s slow_falling

# Swap data
function pk_cr_di:entities/player/data/save/all {subpath:"creative_dimension"}
function pk_cr_di:entities/player/data/restore/all {subpath:"regular_dimension"}
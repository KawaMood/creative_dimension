#> pk_cr_di:entities/player/creative_dimension/join
#
# Triggers when a player joins the creative dimension in any way (from a changed_dimension trigger)
#
# @context a player at @s

# Clear potential remaning effects
effect clear @s slow_falling

# Mark player
tag @s add pk.cr_di.in_creative_dimension

# Swap data
function pk_cr_di:entities/player/data/save/all {subpath:"regular_dimension"}
function pk_cr_di:entities/player/data/restore/all {subpath:"creative_dimension"}

# Force gamemode to creative
gamemode creative @s
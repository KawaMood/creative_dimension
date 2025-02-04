#> pk_cr_di:entities/player/creative_dimension/leave
#
# Triggers when a player leaves the creative dimension in any way (from a changed_dimension trigger)
#
# @context a player at @s

# Mark player
tag @s remove pk.cr_di.in_creative_dimension

# Clear effect
effect clear @s slow_falling

# Clear item entities around the player (to prevent exploit issues on servers)
kill @e[type=item,distance=..10]

# Reset beds use warning
advancement revoke @s only pk_cr_di:events/inventory_changed/get_bed_in_creative_dimension

# Swap data
function pk_cr_di:entities/player/data/save/all {subpath:"creative_dimension"}
function pk_cr_di:entities/player/data/restore/all {subpath:"regular_dimension"}
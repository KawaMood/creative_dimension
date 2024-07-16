#> pk_cr_di:entities/player/creative_dimension/prepare_leave/offset
#
# Offset player's location if they end up in a creative portal
#
# @context a portal controller at @s directly below the player (tag=pk.current.player)

execute if entity @s[tag=pk.cr_di.facing.north] run tp @a[tag=pk.current.player,limit=1,distance=..2] ~ ~ ~-1
execute if entity @s[tag=pk.cr_di.facing.east] run tp @a[tag=pk.current.player,limit=1,distance=..2] ~1 ~ ~
execute if entity @s[tag=pk.cr_di.facing.south] run tp @a[tag=pk.current.player,limit=1,distance=..2] ~ ~ ~1
execute if entity @s[tag=pk.cr_di.facing.west] run tp @a[tag=pk.current.player,limit=1,distance=..2] ~-1 ~ ~
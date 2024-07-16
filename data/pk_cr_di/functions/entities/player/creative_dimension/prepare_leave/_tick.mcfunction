#> pk_cr_di:entities/player/creative_dimension/prepare_leave/_tick
#
# After having consumed a slow falling potion in the creative dimension
#
# @context a player at @s

scoreboard players add @s pk.cr_di.in_creative_portal.timer 1
effect give @s nausea 4 0 true
particle portal ~ ~1 ~ 0.5 0.5 0.5 0.1 1 normal @s
execute if entity @s[scores={pk.cr_di.in_creative_portal.timer=1}] run playsound block.beacon.activate master @s ~ ~ ~ 0.8 1.4
execute if entity @s[scores={pk.cr_di.in_creative_portal.timer=80}] run function pk_cr_di:entities/player/creative_dimension/prepare_leave/initiate
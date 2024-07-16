#> pk_cr_di:entities/player/creative_portal/_tick
#
# @context a player standing in a creative portal at @s

# Check if the player is still in the creative portal
#   @return player leaved the creative portal
execute positioned ~ ~-2 ~ align xyz unless entity @e[type=marker,tag=pk.cr_di.feature.portal.controller,dy=1] run return run function pk_cr_di:entities/player/creative_portal/exit

# @continue Scores
#   @return player standed long enough
execute if entity @s[scores={pk.cr_di.in_creative_portal.timer=80}] run return run function pk_cr_di:entities/player/creative_portal/initiate
#   @continue increment score
scoreboard players add @s pk.cr_di.in_creative_portal.timer 1

# Animations
effect give @s nausea 4 0 true
particle portal ~ ~1 ~ 0.5 0.5 0.5 0.1 1 normal @s
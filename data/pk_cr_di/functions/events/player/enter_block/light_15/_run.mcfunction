#> pk_cr_di:events/player/enter_block/light_15/_run
#
# Rewarded from advancement pk_cr_di:events/enter_block/light_15

# Revoke advancement
advancement revoke @s only pk_cr_di:events/enter_block/light_15

# Enter a creative portal
execute if entity @s[tag=!pk.cr_di.in_creative_portal] positioned ~ ~-2 ~ align xyz if entity @e[type=marker,tag=pk.cr_di.feature.portal.controller,dy=1] run function pk_cr_di:entities/player/creative_portal/enter
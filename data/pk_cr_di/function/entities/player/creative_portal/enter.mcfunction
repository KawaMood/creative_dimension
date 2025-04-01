#> pk_cr_di:entities/player/creative_portal/enter
#
# @context a player entering a creative portal at @s

# Mark player
tag @s add pk.cr_di.in_creative_portal

# Warn the player if portals use has been disabled
execute if score $pk.cr_di.settings.disable_portals_use pk.value matches 1 run title @s actionbar {text:"Creative Portals use has been disabled"}

# Animations
playsound block.portal.trigger ambient @s ~ ~ ~ 0.4 1
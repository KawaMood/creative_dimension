#> pk_cr_di:blocks/pot_al/behavior/activating/cancel
#
# Canceling the activating process if the player remove the item from the pot'al
#
# @context the controller of a pot'al at @s

scoreboard players set @s pk.cr_di.pot_al.activating.timer 0
tag @s remove pk.cr_di.block.pot_al.activating
playsound block.beacon.deactivate block @a[x=0] ~ ~ ~ 1 1.2
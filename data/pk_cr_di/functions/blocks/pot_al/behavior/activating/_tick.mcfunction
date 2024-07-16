#> pk_cr_di:blocks/pot_al/behavior/activating/_tick
#
# Activating behavior
#
# @context the controller of a pot'al at @s

scoreboard players add @s pk.cr_di.pot_al.activating.timer 1

# Animations
#   Sounds
execute if entity @s[scores={pk.cr_di.pot_al.activating.timer=10}] run playsound block.beacon.activate block @a[x=0] ~ ~ ~ 1 1.2
execute if entity @s[scores={pk.cr_di.pot_al.activating.timer=20}] run playsound entity.allay.ambient_with_item block @a[x=0] ~ ~ ~ 1 0.6
execute if entity @s[scores={pk.cr_di.pot_al.activating.timer=60}] run playsound entity.allay.ambient_with_item block @a[x=0] ~ ~ ~ 1 0.6
#   Particles
particle enchant ~ ~ ~ 0.5 0.5 0.5 0 2
execute store result storage pk:common temp.args.y_offset int 1 run scoreboard players get @s pk.cr_di.pot_al.activating.timer
function pk_cr_di:blocks/pot_al/behavior/activating/animate_with_args with storage pk:common temp.args
tp @s ~ ~ ~ ~10 ~

# Convert to portal
execute if entity @s[scores={pk.cr_di.pot_al.activating.timer=80}] run function pk_cr_di:blocks/pot_al/behavior/activating/success
#> pk_cr_di:features/portal/data/create/set_facing
#
# Set facing
#
# @reads storage pk:common constructor_args: object
#       Information to preserve in the new portal
#
# @writes storage pk:common output
#   portal: Portal
#       New feature data

# Try to set from args
data modify storage pk:common output.portal.facing set from storage pk:common constructor_args.facing
#   @return 1 if the data is set
execute if data storage pk:common output.portal.facing run return 1

# @continue Try to set from current entity context
#   Assign portal's facing data as the opposite direction of player's facing direction
scoreboard players reset $y_rotation pk.temp
execute store result score $y_rotation pk.temp run data get entity @s Rotation[0]
execute if score $y_rotation pk.temp matches ..-135 run data modify storage pk:common output.portal.facing set value "south"
execute if score $y_rotation pk.temp matches -134..-45 run data modify storage pk:common output.portal.facing set value "west"
execute if score $y_rotation pk.temp matches -44..44 run data modify storage pk:common output.portal.facing set value "north"
execute if score $y_rotation pk.temp matches 45..134 run data modify storage pk:common output.portal.facing set value "east"
execute if score $y_rotation pk.temp matches 135.. run data modify storage pk:common output.portal.facing set value "south"
#   @return 1 if the data is set
execute if data storage pk:common output.portal.facing run return 1

# @continue Set default value
data modify storage pk:common output.portal.facing set value "north"
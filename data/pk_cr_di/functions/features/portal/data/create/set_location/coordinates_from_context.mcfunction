#> pk_cr_di:features/portal/data/create/set_location/coordinates_from_context
#
# Set location from the current context of location
#
# @context a temporary marker at the context of location

execute store result storage pk:common output.portal.location.x int 1 run data get entity @s Pos[0]
execute store result storage pk:common output.portal.location.y int 1 run data get entity @s Pos[1]
execute store result storage pk:common output.portal.location.z int 1 run data get entity @s Pos[2]

kill @s
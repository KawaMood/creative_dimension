#> pk_cr_di:blocks/pot_al/blocks/create
#
# Place blocks of a pot'al
#
# @input storage pk:common temp
#   pot_al: Pot_al
#       Data of the pot_al
#
# @context location of the pot'al

# Place block
setblock ~ ~ ~ air
execute if data storage pk:common temp.pot_al{facing:"north"} run setblock ~ ~ ~ player_head[rotation=8]
execute if data storage pk:common temp.pot_al{facing:"east"} run setblock ~ ~ ~ player_head[rotation=12]
execute if data storage pk:common temp.pot_al{facing:"south"} run setblock ~ ~ ~ player_head[rotation=0]
execute if data storage pk:common temp.pot_al{facing:"west"} run setblock ~ ~ ~ player_head[rotation=4]
data modify block ~ ~ ~ profile.properties set value [{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHBzOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2Q0NWEyZTU1ZDY3YmEwM2Q4ZGMyMmJlNGI5ZGQ0MzJiYmI2ZDhiN2U1MDQ1N2FhNGQzOTc3ZTNiYjEyZWVhNTIifX19"}]
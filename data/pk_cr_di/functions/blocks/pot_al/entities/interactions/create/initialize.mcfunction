#> pk_cr_di:blocks/pot_al/entities/interactions/create/initialize
#
# Place interaction of a pot'al
#
# @input storage pk:common temp
#   pot_al: Pot_al
#       Data of the pot'al
#
# @context interaction at the pot'al align xyz positioned ~0.5 ~ ~0.5

# Set tags
tag @s add pk.custom_block
tag @s add pk.cr_di
tag @s add pk.cr_di.block
tag @s add pk.cr_di.block.pot_al
tag @s add pk.cr_di.block.pot_al.interaction

# Set scores
execute store result score @s pk.custom_block.component.id run data get storage pk:common temp.pot_al.id

data merge entity @s {height:0.502f,width:0.501f,response:1b}

tp @s ~ ~-0.001 ~
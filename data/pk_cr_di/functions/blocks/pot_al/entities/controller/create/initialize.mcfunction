#> pk_cr_di:blocks/pot_al/entities/controller/create/initialize
#
# Initialize the controller entity of a pot'al
#
# @input storage pk:common temp
#   pot_al: Pot_al
#       Data of the pot'al
#
# @context the controller at the pot'al positioned ~0.5 ~0.5 ~0.5

# Set tags
tag @s add pk.custom_block
tag @s add pk.cr_di
tag @s add pk.cr_di.block
tag @s add pk.cr_di.block.pot_al
tag @s add pk.cr_di.block.pot_al.controller

# Set scores
#   id
execute store result score @s pk.custom_block.component.id run data get storage pk:common temp.pot_al.id
#   facing
scoreboard players set @s pk.custom_block.facing 0
execute if data storage pk:common temp.pot_al{facing:"east"} run scoreboard players set @s pk.custom_block.facing 1
execute if data storage pk:common temp.pot_al{facing:"south"} run scoreboard players set @s pk.custom_block.facing 2
execute if data storage pk:common temp.pot_al{facing:"west"} run scoreboard players set @s pk.custom_block.facing 3

# Set data
data modify entity @s data.pk_data.id set from storage pk:common temp.pot_al.id
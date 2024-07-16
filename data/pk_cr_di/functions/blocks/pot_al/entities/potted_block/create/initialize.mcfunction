#> pk_cr_di:blocks/pot_al/entities/potted_block/create/initialize
#
# @context location of the pot'al align xyz positioned ~0.5 ~0.5 ~0.5

# Set tags
tag @s add pk.custom_block
tag @s add pk.cr_di
tag @s add pk.cr_di.block
tag @s add pk.cr_di.block.pot_al
tag @s add pk.cr_di.block.pot_al.potted_block

# Set scores
execute store result score @s pk.custom_block.component.id run data get storage pk:common temp.pot_al.id

# Set data
function pk_cr_di:blocks/pot_al/entities/potted_block/update/_run
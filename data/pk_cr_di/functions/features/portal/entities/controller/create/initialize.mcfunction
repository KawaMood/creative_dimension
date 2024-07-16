#> pk_cr_di:features/portal/entities/controller/create/initialize
#
# Initialize the controller entity of a portal
#
# @input storage pk:common temp
#   portal: Portal
#       Data of the portal
#
# @context the controller at the portal positioned ~0.5 ~0.5 ~0.5

# Set tags
tag @s add pk.feature
tag @s add pk.cr_di
tag @s add pk.cr_di.feature
tag @s add pk.cr_di.feature.portal
tag @s add pk.cr_di.feature.portal.controller
#   facing
execute if data storage pk:common temp.portal{facing:"north"} run tag @s add pk.cr_di.facing.north
execute if data storage pk:common temp.portal{facing:"east"} run tag @s add pk.cr_di.facing.east
execute if data storage pk:common temp.portal{facing:"south"} run tag @s add pk.cr_di.facing.south
execute if data storage pk:common temp.portal{facing:"west"} run tag @s add pk.cr_di.facing.west

# Set scores
#   id
execute store result score @s pk.feature.component.id run data get storage pk:common temp.portal.id

# Set data
data modify entity @s data.pk_data.id set from storage pk:common temp.portal.id
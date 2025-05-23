#> pk_cr_di:_main/update/_run
#
# Update the current data pack if needed
#
# @writes score $pk.cr_di.version pk.value
#   The data pack's current version score
#
# @writes storage pk:common installed_datapacks[{id:"creative_dimension"}]
#       version: string
#           The data pack's current literal version

scoreboard players set $pk.cr_di.version pk.value 30107
data modify storage pk:common installed_datapacks[{id:"creative_dimension"}].version set value "3.1.7"
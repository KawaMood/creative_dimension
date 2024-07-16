#> pk_cr_di:features/portal/data/search/from_score
#
# @input score $temp pk.feature.component.id
#   Id of the searched portal data
#
# @output pk:common temp
#   portal : Portal
#       The found portal data

data remove storage pk:common temp.portal
data modify storage pk:common package.dynamic_command.args set value {p1:"data modify storage pk:common temp.portal set from storage pk:cr_di database.features.portals[{id:",p2:"}]"}
execute store result storage pk:common package.dynamic_command.args.v1 int 1 run scoreboard players get $temp pk.feature.component.id
function pk_cr_di:packages/dynamic_command/1_var with storage pk:common package.dynamic_command.args
#> pk_cr_di:blocks/pot_al/data/update
#
# Update a pot'al in the database
#
# @input pk:common input
#   pot_al: Pot_al

data modify storage pk:common package.dynamic_command.args set value {p1:"execute if data storage pk:cr_di database.blocks.pot_als[{id:",p2:"}] run data modify storage pk:cr_di database.blocks.pot_als[{id:",p3:"}] set from storage pk:common temp.pot_al"}
data modify storage pk:common package.dynamic_command.args.v1 set from storage pk:common temp.pot_al.id
data modify storage pk:common package.dynamic_command.args.v2 set from storage pk:common temp.pot_al.id
function pk_cr_di:packages/dynamic_command/2_vars with storage pk:common package.dynamic_command.args
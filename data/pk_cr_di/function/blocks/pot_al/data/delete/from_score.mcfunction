#> pk_cr_di:blocks/pot_al/data/delete/from_score
#
# @input score $temp pk.custom_block.component.id
#   Id of the searched pot'al data

data modify storage pk:common package.dynamic_command.args set value {p1:"data remove storage pk:cr_di database.blocks.pot_als[{id:",p2:"}]"}
execute store result storage pk:common package.dynamic_command.args.v1 int 1 run scoreboard players get $temp pk.custom_block.component.id
function pk_cr_di:packages/dynamic_command/1_var with storage pk:common package.dynamic_command.args
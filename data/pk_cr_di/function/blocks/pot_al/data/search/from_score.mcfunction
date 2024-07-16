#> pk_cr_di:blocks/pot_al/data/search/from_score
#
# @input score $temp pk.custom_block.component.id
#   Id of the searched pot'al data
#
# @output pk:common temp
#   pot_al : Pot'al
#       The found pot'al data

data remove storage pk:common temp.pot_al
data modify storage pk:common package.dynamic_command.args set value {p1:"data modify storage pk:common temp.pot_al set from storage pk:cr_di database.blocks.pot_als[{id:",p2:"}]"}
execute store result storage pk:common package.dynamic_command.args.v1 int 1 run scoreboard players get $temp pk.custom_block.component.id
function pk_cr_di:packages/dynamic_command/1_var with storage pk:common package.dynamic_command.args
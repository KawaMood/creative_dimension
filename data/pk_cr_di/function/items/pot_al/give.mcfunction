#> pk_cr_di:items/pot_al/give
#
# Give (a) pot'al(s)
#
# @input args
#   count: int

function pk_cr_di:items/pot_al/attributes
data modify storage pk:common package.dynamic_command.args set from storage pk:common temp.attributes
$data modify storage pk:common package.dynamic_command.args.count set value $(count)
function pk_cr_di:packages/dynamic_item/give with storage pk:common package.dynamic_command.args
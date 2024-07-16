#> pk_cr_di:features/portal/actions/place/_run
#
# Place entities of a portal
#
# @input storage pk:common temp
#   portal: Portal
#       Data of the portal
#
# @context location of the portal

# Place structure
data modify storage pk:common temp.args.variant set from storage pk:common temp.portal.variant
execute if data storage pk:common temp.portal{facing:"north"} run data modify storage pk:common temp.args merge value {x:"~-3",z:"~-1",rotation:"none"}
execute if data storage pk:common temp.portal{facing:"east"} run data modify storage pk:common temp.args merge value {x:"~1",z:"~-3",rotation:"clockwise_90"}
execute if data storage pk:common temp.portal{facing:"south"} run data modify storage pk:common temp.args merge value {x:"~3",z:"~1",rotation:"180"}
execute if data storage pk:common temp.portal{facing:"west"} run data modify storage pk:common temp.args merge value {x:"~-1",z:"~3",rotation:"counterclockwise_90"}
function pk_cr_di:features/portal/actions/place/structure_variant_with_args with storage pk:common temp.args

# Place entities
function pk_cr_di:features/portal/entities/create_all
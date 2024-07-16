#> pk_cr_di:features/portal/actions/create/from_pot_al
#
# Create portal
#
# @reads pk:common constructor_args
#       Args used to create the portal
#
# @context the controller of a pot'al at @s

# Create feature
function pk_cr_di:features/portal/data/create/_run

# Place feature
data modify storage pk:common temp.portal set from storage pk:common output.portal
function pk_cr_di:features/portal/actions/place/_run
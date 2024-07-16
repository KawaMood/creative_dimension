#> pk_cr_di:features/portal/behavior/_tick
#
# Main tick for portal's controller
#
# @context the controller of a portal at @s

# Delete
execute unless block ~ ~2 ~ light run function pk_cr_di:features/portal/actions/break/_run

# Animations
particle enchant ~ ~2 ~ 2 2 2 0 2
particle spore_blossom_air ~ ~2 ~ 1 1 1 0.1 1
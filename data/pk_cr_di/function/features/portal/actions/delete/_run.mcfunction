#> pk_cr_di:features/portal/actions/delete/_run
#
# Remove pot'al without running animation
#
# @context pot'al controller at @s

# Define scores
scoreboard players operation $temp pk.feature.component.id = @s pk.feature.component.id

# Search from the database
function pk_cr_di:features/portal/data/search/from_score

# Delete from the database
function pk_cr_di:features/portal/data/delete/from_score

# Remove entities
function pk_cr_di:features/portal/entities/delete_all
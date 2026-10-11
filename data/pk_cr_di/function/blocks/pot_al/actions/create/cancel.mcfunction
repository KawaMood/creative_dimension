#> pk_racks:blocks/rack/actions/create/cancel

# Stop the process if the player is in creative mode
execute if entity @s[gamemode=creative] run return fail

# Give item back to the player
function pk_cr_di:items/pot_al/give {count: 1}
#   Force slot to update
execute if items entity @s weapon.mainhand *[custom_data~{pk_data:{id:"pot_al"}}] run function pk_cr_di:blocks/pot_al/actions/create/force_update/mainhand
execute if items entity @s weapon.offhand *[custom_data~{pk_data:{id:"pot_al"}}] run function pk_cr_di:blocks/pot_al/actions/create/force_update/offhand
# Update items from lower versions
execute if items entity @s container.* player_head[custom_data~{pk_data:{id:"pot_al",from:"creative_dimension"}},!custom_data~{pk_data:{version:30103s}}] run function pk_cr_di:items/pot_al/update/run {version:30103s}

# Revoke advancement at the end so the function isn't indefinitively triggered by the inventory change above
advancement revoke @s only pk_cr_di:events/inventory_changed/has_pot_al
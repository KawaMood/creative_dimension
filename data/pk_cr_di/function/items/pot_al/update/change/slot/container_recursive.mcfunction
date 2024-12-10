#> pk_cr_di:items/pot_al/update/change/slot/container_recursive

# Update the current item
data modify storage pk:common params.slot set from storage pk:common temp.container[-1].Slot
execute summon armor_stand run function pk_cr_di:items/pot_al/update/change/slot/container with storage pk:common params

# Recursive call
data remove storage pk:common temp.container[-1]
execute if data storage pk:common temp.container[{}] run function pk_cr_di:items/pot_al/update/change/slot/container_recursive
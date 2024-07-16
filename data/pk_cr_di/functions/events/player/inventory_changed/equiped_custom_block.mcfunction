#> pk_cr_di:events/player/inventory_changed/equiped_custom_block

# Give equiped head item back in inventory
data modify storage pk:common package.dynamic_command.args.id set from entity @s Inventory[{Slot:103b}].id
data modify storage pk:common package.dynamic_command.args.count set from entity @s Inventory[{Slot:103b}].count
data modify storage pk:common package.dynamic_command.args.components set from entity @s Inventory[{Slot:103b}].components
data modify storage pk:common backup set from storage pk:common package.dynamic_command.args
function pk_cr_di:packages/dynamic_item/give with storage pk:common package.dynamic_command.args
item replace entity @s armor.head with air

# Revoke advancement at the end so the function isn't indefinitively triggered by the inventory change above
advancement revoke @s only pk_cr_di:events/inventory_changed/equiped_custom_block
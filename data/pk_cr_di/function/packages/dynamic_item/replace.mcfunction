#> pk_cr_di:packages/dynamic_item/replace
#
# Dynamically replace an item
#
# @input args
#   id: string
#       The id of the item
#   components: empty string or entry
#       The components of the item (syntax SNBT)
#   count: int
#       The count of item
#   slot: string
#       The slot

$loot replace entity @s $(slot) loot {pools:[{rolls:1,entries:[{type:"item",name:"$(id)",modifier:[{type:"set_components",components:$(components)},{type:"set_count",count:$(count)}]}]}]}
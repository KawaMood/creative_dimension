#> pk_cr_di:packages/dynamic_item/give
#
# Dynamically give an item
#
# @input args
#   id: string
#       The id of the item
#   components: empty string or entry
#       The components of the item (syntax SNBT)
#   count: int
#       The count of item

$loot give @s loot {pools:[{rolls:1,entries:[{type:"item",name:"$(id)",modifier:[{type:"set_components",components:$(components)},{type:"set_count",count:$(count)}]}]}]}
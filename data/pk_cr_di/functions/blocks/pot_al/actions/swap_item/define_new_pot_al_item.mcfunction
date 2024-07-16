#> pk_cr_di:blocks/pot_al/actions/swap_item/define_new_pot_al_item
#
# Try to exchange the player item with the pot'al's item
#
# @writes temp.action_args
#       pot_al_new_item: Item or empty entry
#           New item to set in the pot'al
#
# @context clicked interaction at @s
#   Triggering player is marked with the tag "pk.current.player"

# Player holds nothing
execute unless data entity @s SelectedItem run return run data modify storage pk:common temp.action_args.pot_al_new_item set value {}

# Player holds pot'al plantable item
execute if items entity @s weapon.mainhand #pk_cr_di:pot_al_plantable run data modify storage pk:common temp.action_args.pot_al_new_item set from entity @s SelectedItem
execute if data storage pk:common temp.action_args.pot_al_new_item.id run data modify storage pk:common temp.action_args.pot_al_new_item.count set value 1
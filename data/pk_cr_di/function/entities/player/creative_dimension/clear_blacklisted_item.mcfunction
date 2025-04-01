#> pk_cr_di:entities/player/creative_dimension/clear_blacklisted_item
#
# Clear blacklisted items of creative dimension from the player inventory if needed
#
# @context a player at @s

execute store result score $amount pk.temp run clear @s #pk_cr_di:blacklisted
execute if score $amount pk.temp matches 1.. run title @s actionbar {text:"This item doesn't exist in the creative dimension"}
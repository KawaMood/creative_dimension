#> pk_cr_di:blocks/pot_al/actions/break/should_loot_itself
# Check if the pot'al existed enough time to be looted when removed 
# Used for protected-area plugins compatibility
#
# @input temp.pot_al: Pot_al
#       Data of the pot'al the clicked interaction belongs to

# @return fail if broken by a player who is in creative mode
execute if entity @a[tag=pk.current.player,gamemode=creative,distance=..65,limit=1] run return fail

# @continue Store the created_at_gametime from the pot'al data, or set it to 0 if the pot'al was created before 3.0.0
scoreboard players set $created_at_gametime pk.temp 0
execute store result score $created_at_gametime pk.temp run data get storage pk:common temp.pot_al.created_at_gametime 1
# Check if should loot
execute unless score $pk.pot_als.settings.lootable_delay pk.value matches 0.. run scoreboard players set $pk.pot_als.settings.lootable_delay pk.value 0
execute store result score $age pk.temp run time query gametime
scoreboard players operation $age pk.temp -= $created_at_gametime pk.temp
#   @return fail if lootable delay is greater than the current pot'al's age
execute if score $pk.pot_als.settings.lootable_delay pk.value > $age pk.temp run return fail

# @continue Loot
function pk_cr_di:items/pot_al/loot with storage pk:common temp.pot_al
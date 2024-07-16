#> pk_cr_di:_main/load
#
# Main load

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Storage:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define storage
#   pk:common: Used within all KawaMood data packs to store public data and temp manipulation
#   pk:cr_di: Used to store private data for this data pack
#declare storage pk:common
#declare storage pk:cr_di

# Initialize common storages (if needed)
execute unless data storage pk:common installed_datapacks[{}] run data modify storage pk:common installed_datapacks set value []
#   Add current data pack into the data packs storage (if needed)
execute unless data storage pk:common installed_datapacks[{id:"creative_dimension"}] run data modify storage pk:common installed_datapacks append value {name:"Creative Dimension",id:"creative_dimension"}

# Initialize specific storage (if needed)
execute unless data storage pk:cr_di database.players[{}] run data modify storage pk:cr_di database.players set value []
execute unless data storage pk:cr_di database.blocks.pot_als[{}] run data modify storage pk:cr_di database.blocks.pot_als set value []
execute unless data storage pk:cr_di database.features.portals[{}] run data modify storage pk:cr_di database.features.portals set value []
execute unless data storage pk:cr_di settings.creative_superflat_spawnpoint run data modify storage pk:cr_di settings.creative_superflat_spawnpoint set value {x:0,y:0,z:0}

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Scores:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define public objectives that are common to each KawaMood data pack:
#   pk.temp only concerns temp values that can be cleared at any time without risks.
#   pk.value is used for fixed values and variable settings, and won't be cleared on uninstallation until there is no KawaMood data pack anymore.
scoreboard objectives add pk.temp dummy
scoreboard objectives add pk.value dummy
scoreboard objectives add pk.custom_block.component.id dummy
scoreboard objectives add pk.custom_block.facing dummy
scoreboard objectives add pk.feature.component.id dummy

# Define private objectives
#   Used to store gametime to some entities to know when they were loaded last time
scoreboard objectives add pk.cr_di.gametime dummy
scoreboard objectives add pk.cr_di.pot_al.activating.timer dummy
scoreboard objectives add pk.cr_di.in_creative_portal.timer dummy
scoreboard objectives add pk.cr_di.leave_game custom:leave_game

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Settings:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Updates:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#   Define the data pack's version and run (an) updating process(es) (if needed)
function pk_cr_di:_main/update/_run

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Logs:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
execute unless score $logs.load pk.value matches ..0 run tellraw @a [{"text": "Loaded ","color": "yellow"},{"text":"KawaMood's ","color": "aqua", "bold": true},{"nbt":"installed_datapacks[{id:\"creative_dimension\"}].name", "storage": "pk:common","color": "aqua", "bold": true},{"text": " (V.","color": "aqua"},{"nbt":"installed_datapacks[{id:\"creative_dimension\"}].version", "storage": "pk:common","color": "aqua"},{"text": ")","color": "aqua"},{"text": " successfully"}]
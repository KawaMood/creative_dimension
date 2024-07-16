# Scores
scoreboard objectives add PKValue dummy
scoreboard objectives add PKDelay dummy
scoreboard objectives add PKDWPortalAnimationDelay dummy
scoreboard objectives add PKDWId dummy
# - Used to store locations
scoreboard objectives add PKPosX dummy
scoreboard objectives add PKPosY dummy
scoreboard objectives add PKPosZ dummy
# - Used to save player's last dream world entered portal
scoreboard objectives add PKDWEnteredPortalY dummy
scoreboard objectives add PKDWEnteredPortalZ dummy
scoreboard objectives add PKDWEnteredPortalX dummy
scoreboard objectives add PKDWEnteredPortalDim dummy
# - If player has been killed in the creative dimension
scoreboard objectives add PKDeathInCreativeDim dummy
# - Stats
scoreboard objectives add PKCreaDeathCount deathCount

# Parameters 
# - Disallow the creation of dream world's portal | 0 = allowed (by default) | 1 = disabled
scoreboard players add %pk_disable_dream_world_portal_creation PKValue 0
# - Disallow the use of dream world's portal | 0 = allowed (by default) | 1 = disabled
scoreboard players add %pk_disable_dream_world_portal_use PKValue 0
# - Disallow the creation of player head in dream world | 0 = allowed (by default) | 1 = disabled
scoreboard players add %pk_disable_dream_world_player_heads_creation PKValue 0
# - Prevent the players gamemode to be forced to creative mode in dream world | 0 = allowed (by default) | 1 = disabled
scoreboard players add %pk_disable_dream_world_forced_gamemode PKValue 0

# Initialize players and marker link ID
scoreboard players add %pk_crea_link_id PKDWId 0

# Forceloaded chunk (following Phi datapack standards)
forceload add -30000000 1600

# Logs
tellraw @a [{"text":"Loaded ","color":"yellow"},{"text":"PK Creative Dimension","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]
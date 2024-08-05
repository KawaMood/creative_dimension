advancement revoke @s only pk_cr_di:place_portal_starter_block/oak_sapling
advancement revoke @s only pk_cr_di:place_portal_starter_block/dark_oak_sapling
advancement revoke @s only pk_cr_di:place_portal_starter_block/birch_sapling
advancement revoke @s only pk_cr_di:place_portal_starter_block/warped_fungus
advancement revoke @s only pk_cr_di:place_portal_starter_block/crimson_fungus
execute if score %pk_disable_dream_world_portal_creation PKValue matches 0 at @s[predicate=!pk_cr_di:dimension/portal_creation_blacklisted] run function pk_cr_di:portal/creation/starter_block/find_placed_block
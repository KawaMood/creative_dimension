#> pk_cr_di:_main/uninstall/callback/after_removing_pot_als

# Disable portals
function pk_cr_di:_main/uninstall/feature/start {feature_storage_path:"pk:cr_di database.features.portals",callback:"function pk_cr_di:_main/uninstall/callback/after_removing_portals",feature_id:"portal"}
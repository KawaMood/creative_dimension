#> pk_cr_di:features/portal/entities/delete_all
#
# Delete entities of a portal
#
# @input storage pk:common temp
#   portal: Portal
#       Data of the portal
#
# @context location of the portal

execute store result score $temp pk.feature.component.id run data get storage pk:common temp.portal.id
kill @e[type=#pk_cr_di:feature_components,tag=pk.cr_di.feature,predicate=pk_cr_di:scores/feature/component_id_match,distance=..20]
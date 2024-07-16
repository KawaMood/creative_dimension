#> pk_cr_di:blocks/pot_al/entities/delete_all
#
# Place entities of a pot'al
#
# @input storage pk:common temp
#   pot_al: Pot_al
#       Data of the pot_al
#
# @context location of the pot'al

execute store result score $temp pk.custom_block.component.id run data get storage pk:common temp.pot_al.id
kill @e[type=#pk_cr_di:custom_block_components,tag=pk.cr_di.block.pot_al,predicate=pk_cr_di:scores/custom_block/component_id_match,distance=..2]
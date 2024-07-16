tag @s remove pk_amethyst_not_absorbed
setblock ~ ~ ~ air
playsound block.amethyst_block.break master @a ~ ~ ~ 1 1
particle block amethyst_block ~ ~0.5 ~ 0.5 0.5 0.5 0.1 10
particle poof ~ ~0.5 ~ 0.5 0.5 0.5 0.1 2
particle portal ~ ~0.5 ~ 0.5 0.5 0.5 0.01 10
kill @s
playsound block.beacon.deactivate master @a ~ ~ ~ 1 1
execute unless block ~ ~2 ~ light run title @a[distance=..5] actionbar {"text":"Portal entrance has been obstructed"}
fill ~ ~2 ~ ~ ~2 ~ air replace light
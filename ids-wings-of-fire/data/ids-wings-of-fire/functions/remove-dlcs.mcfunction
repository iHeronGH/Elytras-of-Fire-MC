#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Check for DLCs
tellraw @e[type=player] [{"text":"The following DLC(s) have been uninstalled:","color":"gray"}]

execute if score thelostcontinent dlc matches 1 run tellraw @e[type=player] [{"text":"The Lost Continent","color":"gold","bold":true}]
execute if score thelostcontinent dlc matches 1 run function the-lost-continent:silent-uninstall

scoreboard players set dlcavailable dlc 0
#Wings of Fire Datapack for Minecraft Java 1.16.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Check for DLCs
tellraw @e[type=player] {"text":"The following DLC(s) are currently installed:","color":"gray"}
execute if score thelostcontinent dlc matches 1 run function the-lost-continent:launch-add-ons/state-version
#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Check for DLCs
tellraw @s [{"text":"The following DLC(s) are currently installed:","color":"gray"}]

execute if score thelostcontinent dlc matches 1 run tellraw @s [{"text":"The Lost Continent","color":"gold","bold":true},{"text":" (v","color":"gray","bold":false},{"text":"1.0.0.1"},{"text":")","color":"gray","bold":false}]
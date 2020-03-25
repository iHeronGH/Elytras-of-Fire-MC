#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Effect All SeaWings
effect give @s night_vision 1000000 0 true
execute at @s if block ~ ~ ~ #ids-wings-of-fire:families/water run effect give @s conduit_power 1000000 1 true
execute at @s unless block ~ ~ ~ #ids-wings-of-fire:families/water run effect clear @s conduit_power
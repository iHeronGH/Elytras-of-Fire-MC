#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Effect All SeaWings
tag @s[tag=!nv] add nv
effect give @s[tag=nv] night_vision 11 0 true
execute at @s if block ~ ~ ~ #ids-wings-of-fire:families/water run effect give @s conduit_power 10 1 true
execute at @s unless block ~ ~ ~ #ids-wings-of-fire:families/water run effect clear @s conduit_power
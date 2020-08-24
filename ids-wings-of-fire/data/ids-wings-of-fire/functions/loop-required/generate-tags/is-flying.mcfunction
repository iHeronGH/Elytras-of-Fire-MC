#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Check if Flying
execute as @p[distance=0,tag=!isFlying] unless block ~ ~ ~ #ids-wings-of-fire:families/water unless block ~ ~-0.5 ~ #minecraft:slabs if block ~ ~-1 ~ #ids-wings-of-fire:families/flight-passive if block ~ ~-2 ~ #ids-wings-of-fire:families/flight-passive run tag @s add isFlying
execute as @p[distance=0,tag=isFlying] if block ~ ~ ~ #ids-wings-of-fire:families/flight-passive unless block ~ ~-1 ~ #ids-wings-of-fire:families/flight-passive run tag @s remove isFlying
execute as @p[distance=0,tag=isFlying] if block ~ ~ ~ #ids-wings-of-fire:families/flight-passive unless block ~ ~-2 ~ #ids-wings-of-fire:families/flight-passive run tag @s remove isFlying
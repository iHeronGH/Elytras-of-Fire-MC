#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Check if Flying
execute at @s[team=!,tag=!isFlying] unless block ~ ~ ~ #ids-wings-of-fire:families/water unless block ~ ~-0.5 ~ #minecraft:slabs if block ~ ~-1 ~ #ids-wings-of-fire:families/flight-passive if block ~ ~-2 ~ #ids-wings-of-fire:families/flight-passive run tag @s add isFlying
execute at @s[team=!,tag=isFlying] if block ~ ~ ~ #ids-wings-of-fire:families/flight-passive unless block ~ ~-1 ~ #ids-wings-of-fire:families/flight-passive run tag @s remove isFlying
execute at @s[team=!,tag=isFlying] if block ~ ~ ~ #ids-wings-of-fire:families/flight-passive unless block ~ ~-2 ~ #ids-wings-of-fire:families/flight-passive run tag @s remove isFlying
tag @s[team=,tag=isFlying] remove isFlying
#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Effect All IceWings
effect give @e[type=player,team=IceWings] minecraft:strength 1 1 true

#Speed 3 on Snow
execute as @e[type=player,team=IceWings] at @s if block ~ ~-0.5 ~ minecraft:snow_block run effect give @s minecraft:speed 1 2 true
execute as @e[type=player,team=IceWings] at @s if block ~ ~ ~ minecraft:snow run effect give @s minecraft:speed 1 2 true

#Speed 2 on Ice
execute as @e[type=player,team=IceWings] at @s if block ~ ~-0.5 ~ #minecraft:ice run effect give @s minecraft:speed 1 1 true
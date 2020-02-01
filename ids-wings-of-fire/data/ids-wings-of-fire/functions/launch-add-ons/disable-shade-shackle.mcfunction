#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Disable Shade Shackle
execute as @e[type=player,tag=ShadowBindActive] at @s run tag @e[distance=..12,tag=ShadowBindEffect] remove ShadowBindEffect
execute as @e[type=player,tag=ShadowBindActive] at @s run effect clear @e[distance=..12] minecraft:slowness
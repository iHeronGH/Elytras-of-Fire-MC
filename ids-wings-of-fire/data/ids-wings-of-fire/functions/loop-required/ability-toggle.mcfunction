#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Teamless Toggle
execute if entity @s[tag=!Dragon] run tag @s add abilToggOff

#Run Switch Function
execute if entity @s[scores={abilities=1..}] run function ids-wings-of-fire:loop-required/switch
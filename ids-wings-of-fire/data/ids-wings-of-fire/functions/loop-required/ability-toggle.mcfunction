#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Teamless Toggle
tag @a[tag=!Pyrrhian,tag=!Pantalan] add abilToggOff

#Run Switch Function
execute as @a[scores={abilities=1..}] run function ids-wings-of-fire:loop-required/switch
#Wings of Fire Datapack for Minecraft Java 1.15.1 0
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Increment Timer
scoreboard players add t_sec timer 1

#Count Game Ticks
execute if score t_sec timer matches 20 run scoreboard players add sec timer 1
execute if score t_sec timer matches 20 run scoreboard players set t_sec timer 0

#Count Seconds
execute if score sec timer matches 60 run scoreboard players add min timer 1
execute if score sec timer matches 60 run scoreboard players set sec timer 0

#Count Minutes
execute if score min timer matches 60 run scoreboard players add hour timer 1
execute if score min timer matches 60 run scoreboard players set min timer 0
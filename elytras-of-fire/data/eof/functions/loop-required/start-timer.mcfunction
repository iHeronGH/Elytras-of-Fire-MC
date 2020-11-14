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
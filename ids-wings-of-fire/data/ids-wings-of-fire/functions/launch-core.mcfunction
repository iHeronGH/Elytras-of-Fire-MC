#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Activates Datapack
scoreboard objectives add dlc dummy
function ids-wings-of-fire:launch-required/generate-scoreboard
function ids-wings-of-fire:launch-required/generate-bossbars
function ids-wings-of-fire:launch-required/generate-teams
function ids-wings-of-fire:launch-required/welcome
forceload remove 29999977 19832
forceload add 29999977 19832
fill 29999976 0 19831 29999978 2 19833 bedrock
setblock 29999977 1 19832 shulker_box{Items:[{Slot:0b,id:"minecraft:oak_boat",Count:1b}]}
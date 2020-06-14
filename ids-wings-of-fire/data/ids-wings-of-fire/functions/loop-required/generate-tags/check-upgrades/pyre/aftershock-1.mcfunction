#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Aftershock1] run tag @s add Aftershock1_T1AO
execute if entity @s[tag=Aftershock2] run tag @s add Aftershock1_T2AO
execute if score @s[tag=!Aftershock1_T1AO,tag=!Aftershock1_T2AO] xp < t4 xp run tag @s add Aftershock1_NEXp
execute if entity @s[tag=!Aftershock1_T1AO,tag=!Aftershock1_T2AO,tag=!Aftershock1_NEXp] xp run tag @s add Aftershock1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Aftershock1_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Aftershock I","color":"gold","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Aftershock1_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Aftershock II","color":"gold","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Aftershock1_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Aftershock 1
execute if entity @s[tag=Aftershock1_temp] xp run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Aftershock I","color":"gold","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Aftershock1_temp] xp run tag @s add Aftershock1
execute if entity @s[tag=Aftershock1_temp,tag=Aftershock1] xp run xp add @s -400

#Remove CheckTags
tag @s[tag=Aftershock1_T1AO] remove Aftershock1_T1AO
tag @s[tag=Aftershock1_T2AO] remove Aftershock1_T2AO
tag @s[tag=Aftershock1_NEXp] remove Aftershock1_NEXp
tag @s[tag=Aftershock1_temp] remove Aftershock1_temp
scoreboard players set @s Aftershock1 0
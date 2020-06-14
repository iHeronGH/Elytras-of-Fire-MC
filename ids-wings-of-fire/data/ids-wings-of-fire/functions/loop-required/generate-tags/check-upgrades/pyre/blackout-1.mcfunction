#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Blackout1] run tag @s add Blackout1_T1AO
execute if entity @s[tag=Blackout2] run tag @s add Blackout1_T2AO
execute if score @s[tag=!Blackout1_T1AO,tag=!Blackout1_T2AO] xp < t4 xp run tag @s add Blackout1_NEXp
execute if entity @s[tag=!Blackout1_T1AO,tag=!Blackout1_T2AO,tag=!Blackout1_NEXp] run tag @s add Blackout1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Blackout1_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Blackout I","color":"dark_gray","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Blackout1_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Blackout II","color":"dark_gray","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Blackout1_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Blackout 1
execute if entity @s[tag=Blackout1_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Blackout I","color":"dark_gray","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Blackout1_temp] run tag @s add Blackout1
execute if entity @s[tag=Blackout1_temp,tag=Blackout1] run xp add @s -400

#Remove CheckTags
tag @s[tag=Blackout1_T1AO] remove Blackout1_T1AO
tag @s[tag=Blackout1_T2AO] remove Blackout1_T2AO
tag @s[tag=Blackout1_NEXp] remove Blackout1_NEXp
tag @s[tag=Blackout1_temp] remove Blackout1_temp
scoreboard players set @s Blackout1 0
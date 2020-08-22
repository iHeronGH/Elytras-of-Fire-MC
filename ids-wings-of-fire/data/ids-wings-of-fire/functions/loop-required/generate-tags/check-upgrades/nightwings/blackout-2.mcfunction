#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Blackout1] run tag @s add Blackout2_T1AO
execute if entity @s[tag=Blackout2] run tag @s add Blackout2_T2AO
execute if score @s[tag=Blackout2_T1AO,tag=!Blackout2_T2AO] xp < t4 xp run tag @s add Blackout2_NEXp
execute if entity @s[tag=Blackout2_T1AO,tag=!Blackout2_T2AO,tag=!Blackout2_NEXp] run tag @s add Blackout2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Blackout2_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Blackout II","color":"dark_gray","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Blackout2_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[tag=!Blackout2_T1AO,tag=!Blackout2_T2AO] run tellraw @s [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Blackout 2
execute if entity @s[tag=Blackout2_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Blackout II","color":"dark_gray","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Blackout2_temp] run tag @s add Blackout2
execute if entity @s[tag=Blackout2_temp,tag=Blackout2] run xp add @s -400
execute if entity @s[tag=Blackout2_temp,tag=Blackout2] run tag @s remove Blackout1

#Remove CheckTags
tag @s[tag=Blackout2_T1AO] remove Blackout2_T1AO
tag @s[tag=Blackout2_T2AO] remove Blackout2_T2AO
tag @s[tag=Blackout2_NEXp] remove Blackout2_NEXp
tag @s[tag=Blackout2_temp] remove Blackout2_temp
scoreboard players set @s Blackout2 0
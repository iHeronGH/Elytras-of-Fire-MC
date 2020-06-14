#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Everburn1] run tag @s add Everburn2_T1AO
execute if entity @s[tag=Everburn2] run tag @s add Everburn2_T2AO
execute if score @s[tag=Everburn2_T1AO,tag=!Everburn2_T2AO] xp < t2 xp run tag @s add Everburn2_NEXp
execute if entity @s[tag=Everburn2_T1AO,tag=!Everburn2_T2AO,tag=!Everburn2_NEXp] run tag @s add Everburn2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Everburn2_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Everburn II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Everburn2_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[tag=!Everburn2_T1AO,tag=!Everburn2_T2AO] run tellraw @s [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Everburn 2
execute if entity @s[tag=Everburn2_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Everburn II","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Everburn2_temp] run tag @s add Everburn2
execute if entity @s[tag=Everburn2_temp,tag=Everburn2] run xp add @s -450
execute if entity @s[tag=Everburn2_temp,tag=Everburn2] run tag @s remove Everburn1

#Remove CheckTags
tag @s[tag=Everburn2_T1AO] remove Everburn2_T1AO
tag @s[tag=Everburn2_T2AO] remove Everburn2_T2AO
tag @s[tag=Everburn2_NEXp] remove Everburn2_NEXp
tag @s[tag=Everburn2_temp] remove Everburn2_temp
scoreboard players set @s Everburn2 0
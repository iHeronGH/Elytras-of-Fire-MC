#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Wildfire2=1..},tag=Wildfire1] run tag @s add Wildfire2_T1AO
execute if entity @s[scores={Wildfire2=1..},tag=Wildfire2] run tag @s add Wildfire2_T2AO
execute if score @s[scores={Wildfire2=1..},tag=Wildfire2_T1AO,tag=!Wildfire2_T2AO] xp < t2 xp run tag @s add Wildfire2_NEXp
execute if entity @s[scores={Wildfire2=1..},tag=Wildfire1,tag=!Wildfire2,tag=!Wildfire3,tag=Wildfire2_T1AO,tag=!Wildfire2_T2AO,tag=!Wildfire2_NEXp] if score @s xp >= t2 xp run tag @s add Wildfire2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Wildfire2_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Wildfire II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Wildfire2_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[scores={Wildfire2=1..},tag=!Wildfire2_T1AO,tag=!Wildfire2_T2AO] run tellraw @s ["",{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Wildfire 2
execute if entity @s[tag=Wildfire2_temp] if score @s xp >= t2 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Wildfire II","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Wildfire2_temp] if score @s xp >= t2 xp run tag @s add Wildfire2
execute if entity @s[tag=Wildfire2_temp,tag=Wildfire2] if score @s xp >= t2 xp run xp add @s -450
execute if entity @s[tag=Wildfire2_temp,tag=Wildfire2] if score @s xp >= t2 xp run tag @s remove Wildfire1

#Remove CheckTags
tag @s[tag=Wildfire2_T1AO] remove Wildfire2_T1AO
tag @s[tag=Wildfire2_T2AO] remove Wildfire2_T2AO
tag @s[tag=Wildfire2_NEXp] remove Wildfire2_NEXp
tag @s[tag=Wildfire2_temp] remove Wildfire2_temp
scoreboard players set @s Wildfire2 0
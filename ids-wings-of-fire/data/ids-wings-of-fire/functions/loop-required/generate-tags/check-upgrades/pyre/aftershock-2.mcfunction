#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Aftershock2=1..},tag=Aftershock1] run tag @s add Aftershock2_T1AO
execute if entity @s[scores={Aftershock2=1..},tag=Aftershock2] run tag @s add Aftershock2_T2AO
execute if score @s[scores={Aftershock2=1..},tag=Aftershock2_T1AO,tag=!Aftershock2_T2AO] xp < t4 xp run tag @s add Aftershock2_NEXp
execute if entity @s[scores={Aftershock2=1..},tag=Aftershock1,tag=!Aftershock2,tag=Aftershock2_T1AO,tag=!Aftershock2_T2AO,tag=!Aftershock2_NEXp] if score @s xp >= t4 xp run tag @s add Aftershock2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Aftershock2_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Aftershock II","color":"gold","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Aftershock2_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[scores={Aftershock2=1..},tag=!Aftershock2_T1AO,tag=!Aftershock2_T2AO] run tellraw @s ["",{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Aftershock 2
execute if entity @s[tag=Aftershock2_temp] if score @s xp >= t4 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Aftershock II","color":"gold","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Aftershock2_temp] if score @s xp >= t4 xp run tag @s add Aftershock2
execute if entity @s[tag=Aftershock2_temp,tag=Aftershock2] if score @s xp >= t4 xp run xp add @s -400
execute if entity @s[tag=Aftershock2_temp,tag=Aftershock2] if score @s xp >= t4 xp run tag @s remove Aftershock1

#Remove CheckTags
tag @s[tag=Aftershock2_T1AO] remove Aftershock2_T1AO
tag @s[tag=Aftershock2_T2AO] remove Aftershock2_T2AO
tag @s[tag=Aftershock2_NEXp] remove Aftershock2_NEXp
tag @s[tag=Aftershock2_temp] remove Aftershock2_temp
scoreboard players set @s Aftershock2 0
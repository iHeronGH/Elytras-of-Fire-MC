#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Chill2=1..},tag=Chill1] run tag @s add Chill2_T1AO
execute if entity @s[scores={Chill2=1..},tag=Chill2] run tag @s add Chill2_T2AO
execute if score @s[scores={Chill2=1..},tag=Chill2_T1AO,tag=!Chill2_T2AO] xp < t4 xp run tag @s add Chill2_NEXp
execute if entity @s[scores={Chill2=1..},tag=Chill1,tag=!Chill2,tag=Chill2_T1AO,tag=!Chill2_T2AO,tag=!Chill2_NEXp] if score @s xp >= t4 xp run tag @s add Chill2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Chill2_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Chill II","color":"gray","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Chill2_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[scores={Chill2=1..},tag=!Chill2_T1AO,tag=!Chill2_T2AO] run tellraw @s ["",{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Chill 2
execute if entity @s[tag=Chill2_temp] if score @s xp >= t4 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Chill II","color":"gray","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Chill2_temp] if score @s xp >= t4 xp run tag @s add Chill2
execute if entity @s[tag=Chill2_temp,tag=Chill2] if score @s xp >= t4 xp run xp add @s -400
execute if entity @s[tag=Chill2_temp,tag=Chill2] if score @s xp >= t4 xp run tag @s remove Chill1

#Remove CheckTags
tag @s[tag=Chill2_T1AO] remove Chill2_T1AO
tag @s[tag=Chill2_T2AO] remove Chill2_T2AO
tag @s[tag=Chill2_NEXp] remove Chill2_NEXp
tag @s[tag=Chill2_temp] remove Chill2_temp
scoreboard players set @s Chill2 0
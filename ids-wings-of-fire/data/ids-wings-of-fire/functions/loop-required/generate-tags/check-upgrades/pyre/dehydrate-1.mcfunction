#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Dehydrate1=1..},tag=Dehydrate1] run tag @s add Dehydrate1_T1AO
execute if entity @s[scores={Dehydrate1=1..},tag=Dehydrate2] run tag @s add Dehydrate1_T2AO
execute if score @s[scores={Dehydrate1=1..},tag=!Dehydrate1_T1AO,tag=!Dehydrate1_T2AO] xp < t2 xp run tag @s add Dehydrate1_NEXp
execute if entity @s[scores={Dehydrate1=1..},tag=!Dehydrate1,tag=!Dehydrate2,tag=!Dehydrate1_T1AO,tag=!Dehydrate1_T2AO,tag=!Dehydrate1_NEXp] if score @s xp >= t2 xp run tag @s add Dehydrate1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Dehydrate1_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Dehydrate I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Dehydrate1_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Dehydrate II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Dehydrate1_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Dehydrate 1
execute if entity @s[tag=Dehydrate1_temp] if score @s xp >= t2 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Dehydrate I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Dehydrate1_temp] if score @s xp >= t2 xp run tag @s add Dehydrate1
execute if entity @s[tag=Dehydrate1_temp,tag=Dehydrate1] if score @s xp >= t2 xp run xp add @s -450

#Remove CheckTags
tag @s[tag=Dehydrate1_T1AO] remove Dehydrate1_T1AO
tag @s[tag=Dehydrate1_T2AO] remove Dehydrate1_T2AO
tag @s[tag=Dehydrate1_NEXp] remove Dehydrate1_NEXp
tag @s[tag=Dehydrate1_temp] remove Dehydrate1_temp
scoreboard players set @s Dehydrate1 0
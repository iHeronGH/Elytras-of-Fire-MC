#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Furnace3=1..},tag=Furnace1] run tag @s add Furnace3_T1AO
execute if entity @s[scores={Furnace3=1..},tag=Furnace2] run tag @s add Furnace3_T2AO
execute if entity @s[scores={Furnace3=1..},tag=Furnace3] run tag @s add Furnace3_T3AO
execute if score @s[scores={Furnace3=1..},tag=Furnace3_T2AO,tag=!Furnace3_T3AO] xp < t1 xp run tag @s add Furnace3_NEXp
execute if entity @s[scores={Furnace3=1..},tag=!Furnace1,tag=Furnace2,tag=!Furnace3,tag=!Furnace3_T1AO,tag=Furnace3_T2AO,tag=!Furnace3_T3AO,tag=!Furnace3_NEXp] if score @s xp >= t1 xp run tag @s add Furnace3_temp

#Announce Tier Already Owned
execute if entity @s[tag=Furnace3_T3AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Furnace III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Furnace3_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[scores={Furnace3=1..},tag=!Furnace3_T2AO,tag=!Furnace3_T3AO] run tellraw @s ["",{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Furnace 3
execute if entity @s[tag=Furnace3_temp] run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Furnace III","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Furnace3_temp] run tag @s add Furnace3
execute if entity @s[tag=Furnace3_temp,tag=Furnace3] run xp add @s -300
execute if entity @s[tag=Furnace3_temp,tag=Furnace3] run tag @s remove Furnace2

#Remove CheckTags
tag @s[tag=Furnace3_T1AO] remove Furnace3_T1AO
tag @s[tag=Furnace3_T2AO] remove Furnace3_T2AO
tag @s[tag=Furnace3_T3AO] remove Furnace3_T3AO
tag @s[tag=Furnace3_NEXp] remove Furnace3_NEXp
tag @s[tag=Furnace3_temp] remove Furnace3_temp
scoreboard players set @s Furnace3 0
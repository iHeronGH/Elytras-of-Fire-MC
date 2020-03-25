#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Potency1=1..},tag=Potency1] run tag @s add Potency_T1AO
execute if score @s[scores={Potency1=1..},tag=!Potency_T1AO] xp < t3 xp run tag @s add Potency_NEXp
execute if entity @s[scores={Potency1=1..},tag=!Potency1,tag=!Potency_T1AO,tag=!Potency_NEXp] if score @s xp >= t3 xp run tag @s add Potency_temp

#Announce Tier Already Owned
execute if entity @s[tag=Potency_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Potency I","color":"white","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Potency_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Potency 1
execute if entity @s[tag=Potency_temp] run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Potency I","color":"white","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Potency_temp] run tag @s add Potency1
execute if entity @s[tag=Potency_temp,tag=Potency1] run xp add @s -900

#Remove CheckTags
tag @s[tag=Potency_T1AO] remove Potency_T1AO
tag @s[tag=Potency_NEXp] remove Potency_NEXp
tag @s[tag=Potency_temp] remove Potency_temp
scoreboard players set @s Potency1 0
#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Noxious1=1..},tag=Noxious1] run tag @s add Noxious1_T1AO
execute if entity @s[scores={Noxious1=1..},tag=Noxious2] run tag @s add Noxious1_T2AO
execute if score @s[scores={Noxious1=1..},tag=!Noxious1_T1AO,tag=!Noxious1_T2AO] xp < t2 xp run tag @s add Noxious1_NEXp
execute if entity @s[scores={Noxious1=1..},tag=!Noxious1,tag=!Noxious2,tag=!Noxious1_T1AO,tag=!Noxious1_T2AO,tag=!Noxious1_NEXp] if score @s xp >= t2 xp run tag @s add Noxious1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Noxious1_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Noxious I","color":"white","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Noxious1_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Noxious II","color":"white","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Noxious1_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Noxious 1
execute if entity @s[tag=Noxious1_temp] if score @s xp >= t2 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Noxious I","color":"white","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Noxious1_temp] if score @s xp >= t2 xp run tag @s add Noxious1
execute if entity @s[tag=Noxious1_temp,tag=Noxious1] if score @s xp >= t2 xp run xp add @s -450

#Remove CheckTags
tag @s[tag=Noxious1_T1AO] remove Noxious1_T1AO
tag @s[tag=Noxious1_T2AO] remove Noxious1_T2AO
tag @s[tag=Noxious1_NEXp] remove Noxious1_NEXp
tag @s[tag=Noxious1_temp] remove Noxious1_temp
scoreboard players set @s Noxious1 0
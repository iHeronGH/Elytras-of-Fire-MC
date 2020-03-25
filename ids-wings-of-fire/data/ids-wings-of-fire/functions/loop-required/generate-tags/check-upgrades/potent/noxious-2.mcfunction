#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Noxious2=1..},tag=Noxious1] run tag @s add Noxious2_T1AO
execute if entity @s[scores={Noxious2=1..},tag=Noxious2] run tag @s add Noxious2_T2AO
execute if score @s[scores={Noxious2=1..},tag=Noxious2_T1AO,tag=!Noxious2_T2AO] xp < t2 xp run tag @s add Noxious2_NEXp
execute if entity @s[scores={Noxious2=1..},tag=Noxious1,tag=!Noxious2,tag=Noxious2_T1AO,tag=!Noxious2_T2AO,tag=!Noxious2_NEXp] if score @s xp >= t2 xp run tag @s add Noxious2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Noxious2_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Noxious II","color":"white","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Noxious2_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[scores={Noxious2=1..},tag=!Noxious2_T1AO,tag=!Noxious2_T2AO] run tellraw @s ["",{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Noxious 2
execute if entity @s[tag=Noxious2_temp] if score @s xp >= t2 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Noxious II","color":"white","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Noxious2_temp] if score @s xp >= t2 xp run tag @s add Noxious2
execute if entity @s[tag=Noxious2_temp,tag=Noxious2] if score @s xp >= t2 xp run xp add @s -450
execute if entity @s[tag=Noxious2_temp,tag=Noxious2] if score @s xp >= t2 xp run tag @s remove Noxious1

#Remove CheckTags
tag @s[tag=Noxious2_T1AO] remove Noxious2_T1AO
tag @s[tag=Noxious2_T2AO] remove Noxious2_T2AO
tag @s[tag=Noxious2_NEXp] remove Noxious2_NEXp
tag @s[tag=Noxious2_temp] remove Noxious2_temp
scoreboard players set @s Noxious2 0
#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Streamline1=1..},tag=Streamline1] run tag @s add Streamline1_T1AO
execute if entity @s[scores={Streamline1=1..},tag=Streamline2] run tag @s add Streamline1_T2AO
execute if score @s[scores={Streamline1=1..},tag=!Streamline1_T1AO,tag=!Streamline1_T2AO] xp < t4 xp run tag @s add Streamline1_NEXp
execute if entity @s[scores={Streamline1=1..},tag=!Streamline1,tag=!Streamline2,tag=!Streamline1_T1AO,tag=!Streamline1_T2AO,tag=!Streamline1_NEXp] if score @s xp >= t4 xp run tag @s add Streamline1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Streamline1_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Streamline I","color":"dark_aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Streamline1_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Streamline II","color":"dark_aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Streamline1_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Streamline 1
execute if entity @s[tag=Streamline1_temp] if score @s xp >= t4 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Streamline I","color":"dark_aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Streamline1_temp] if score @s xp >= t4 xp run tag @s add Streamline1
execute if entity @s[tag=Streamline1_temp,tag=Streamline1] if score @s xp >= t4 xp run xp add @s -400

#Remove CheckTags
tag @s[tag=Streamline1_T1AO] remove Streamline1_T1AO
tag @s[tag=Streamline1_T2AO] remove Streamline1_T2AO
tag @s[tag=Streamline1_NEXp] remove Streamline1_NEXp
tag @s[tag=Streamline1_temp] remove Streamline1_temp
scoreboard players set @s Streamline1 0
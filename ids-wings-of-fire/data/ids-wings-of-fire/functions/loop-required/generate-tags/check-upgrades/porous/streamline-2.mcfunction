#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Streamline2=1..},tag=Streamline1] run tag @s add Streamline2_T1AO
execute if entity @s[scores={Streamline2=1..},tag=Streamline2] run tag @s add Streamline2_T2AO
execute if score @s[scores={Streamline2=1..},tag=Streamline2_T1AO,tag=!Streamline2_T2AO] xp < t4 xp run tag @s add Streamline2_NEXp
execute if entity @s[scores={Streamline2=1..},tag=Streamline1,tag=!Streamline2,tag=Streamline2_T1AO,tag=!Streamline2_T2AO,tag=!Streamline2_NEXp] if score @s xp >= t4 xp run tag @s add Streamline2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Streamline2_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Streamline II","color":"dark_aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Streamline2_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[scores={Streamline2=1..},tag=!Streamline2_T1AO,tag=!Streamline2_T2AO] run tellraw @s ["",{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Streamline 2
execute if entity @s[tag=Streamline2_temp] if score @s xp >= t4 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Streamline II","color":"dark_aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Streamline2_temp] if score @s xp >= t4 xp run tag @s add Streamline2
execute if entity @s[tag=Streamline2_temp,tag=Streamline2] if score @s xp >= t4 xp run xp add @s -400
execute if entity @s[tag=Streamline2_temp,tag=Streamline2] if score @s xp >= t4 xp run tag @s remove Streamline1

#Remove CheckTags
tag @s[tag=Streamline2_T1AO] remove Streamline2_T1AO
tag @s[tag=Streamline2_T2AO] remove Streamline2_T2AO
tag @s[tag=Streamline2_NEXp] remove Streamline2_NEXp
tag @s[tag=Streamline2_temp] remove Streamline2_temp
scoreboard players set @s Streamline2 0
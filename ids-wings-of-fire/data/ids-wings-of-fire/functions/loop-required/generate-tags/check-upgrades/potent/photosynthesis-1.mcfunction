#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Photosynthesis1=1..},tag=Photosynthesis1] run tag @s add Photosynthesis1_T1AO
execute if entity @s[scores={Photosynthesis1=1..},tag=Photosynthesis2] run tag @s add Photosynthesis1_T2AO
execute if score @s[scores={Photosynthesis1=1..},tag=!Photosynthesis1_T1AO,tag=!Photosynthesis1_T2AO] xp < t2 xp run tag @s add Photosynthesis1_NEXp
execute if entity @s[scores={Photosynthesis1=1..},tag=!Photosynthesis1,tag=!Photosynthesis2,tag=!Photosynthesis1_T1AO,tag=!Photosynthesis1_T2AO,tag=!Photosynthesis1_NEXp] if score @s xp >= t2 xp run tag @s add Photosynthesis1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Photosynthesis1_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Photosynthesis I","color":"dark_green","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Photosynthesis1_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Photosynthesis II","color":"dark_green","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Photosynthesis1_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Photosynthesis 1
execute if entity @s[tag=Photosynthesis1_temp] if score @s xp >= t2 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Photosynthesis I","color":"dark_green","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Photosynthesis1_temp] if score @s xp >= t2 xp run tag @s add Photosynthesis1
execute if entity @s[tag=Photosynthesis1_temp,tag=Photosynthesis1] if score @s xp >= t2 xp run xp add @s -450

#Remove CheckTags
tag @s[tag=Photosynthesis1_T1AO] remove Photosynthesis1_T1AO
tag @s[tag=Photosynthesis1_T2AO] remove Photosynthesis1_T2AO
tag @s[tag=Photosynthesis1_NEXp] remove Photosynthesis1_NEXp
tag @s[tag=Photosynthesis1_temp] remove Photosynthesis1_temp
scoreboard players set @s Photosynthesis1 0
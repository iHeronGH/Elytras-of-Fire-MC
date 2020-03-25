#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Photosynthesis2=1..},tag=Photosynthesis1] run tag @s add Photosynthesis2_T1AO
execute if entity @s[scores={Photosynthesis2=1..},tag=Photosynthesis2] run tag @s add Photosynthesis2_T2AO
execute if score @s[scores={Photosynthesis2=1..},tag=Photosynthesis2_T1AO,tag=!Photosynthesis2_T2AO] xp < t2 xp run tag @s add Photosynthesis2_NEXp
execute if entity @s[scores={Photosynthesis2=1..},tag=Photosynthesis1,tag=!Photosynthesis2,tag=Photosynthesis2_T1AO,tag=!Photosynthesis2_T2AO,tag=!Photosynthesis2_NEXp] if score @s xp >= t2 xp run tag @s add Photosynthesis2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Photosynthesis2_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Photosynthesis II","color":"dark_green","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Photosynthesis2_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[scores={Photosynthesis2=1..},tag=!Photosynthesis2_T1AO,tag=!Photosynthesis2_T2AO] run tellraw @s ["",{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Photosynthesis 2
execute if entity @s[tag=Photosynthesis2_temp] if score @s xp >= t2 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Photosynthesis II","color":"dark_green","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Photosynthesis2_temp] if score @s xp >= t2 xp run tag @s add Photosynthesis2
execute if entity @s[tag=Photosynthesis2_temp,tag=Photosynthesis2] if score @s xp >= t2 xp run xp add @s -450
execute if entity @s[tag=Photosynthesis2_temp,tag=Photosynthesis2] if score @s xp >= t2 xp run tag @s remove Photosynthesis1

#Remove CheckTags
tag @s[tag=Photosynthesis2_T1AO] remove Photosynthesis2_T1AO
tag @s[tag=Photosynthesis2_T2AO] remove Photosynthesis2_T2AO
tag @s[tag=Photosynthesis2_NEXp] remove Photosynthesis2_NEXp
tag @s[tag=Photosynthesis2_temp] remove Photosynthesis2_temp
scoreboard players set @s Photosynthesis2 0
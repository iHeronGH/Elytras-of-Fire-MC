#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Permafrost1] run tag @s add Permafrost2_T1AO
execute if entity @s[tag=Permafrost2] run tag @s add Permafrost2_T2AO
execute if score @s[tag=Permafrost2_T1AO,tag=!Permafrost2_T2AO] xp < t2 xp run tag @s add Permafrost2_NEXp
execute if entity @s[tag=Permafrost2_T1AO,tag=!Permafrost2_T2AO,tag=!Permafrost2_NEXp] run tag @s add Permafrost2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Permafrost2_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Permafrost II","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Permafrost2_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[tag=!Permafrost2_T1AO,tag=!Permafrost2_T2AO] run tellraw @s [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Permafrost 2
execute if entity @s[tag=Permafrost2_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Permafrost II","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Permafrost2_temp] run tag @s add Permafrost2
execute if entity @s[tag=Permafrost2_temp,tag=Permafrost2] run xp add @s -450
execute if entity @s[tag=Permafrost2_temp,tag=Permafrost2] run tag @s remove Permafrost1

#Remove CheckTags
tag @s[tag=Permafrost2_T1AO] remove Permafrost2_T1AO
tag @s[tag=Permafrost2_T2AO] remove Permafrost2_T2AO
tag @s[tag=Permafrost2_NEXp] remove Permafrost2_NEXp
tag @s[tag=Permafrost2_temp] remove Permafrost2_temp
scoreboard players set @s Permafrost2 0
#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Drought1] run tag @s add Drought2_T1AO
execute if entity @s[tag=Drought2] run tag @s add Drought2_T2AO
execute if score @s[tag=Drought2_T1AO,tag=!Drought2_T2AO] xp < t4 xp run tag @s add Drought2_NEXp
execute if entity @s[tag=Drought2_T1AO,tag=!Drought2_T2AO,tag=!Drought2_NEXp] run tag @s add Drought2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Drought2_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Drought II","color":"yellow","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Drought2_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[tag=!Drought2_T1AO,tag=!Drought2_T2AO] run tellraw @s [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Drought 2
execute if entity @s[tag=Drought2_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Drought II","color":"yellow","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Drought2_temp] run tag @s add Drought2
execute if entity @s[tag=Drought2_temp,tag=Drought2] run xp add @s -400
execute if entity @s[tag=Drought2_temp,tag=Drought2] run tag @s remove Drought1

#Remove CheckTags
tag @s[tag=Drought2_T1AO] remove Drought2_T1AO
tag @s[tag=Drought2_T2AO] remove Drought2_T2AO
tag @s[tag=Drought2_NEXp] remove Drought2_NEXp
tag @s[tag=Drought2_temp] remove Drought2_temp
scoreboard players set @s Drought2 0
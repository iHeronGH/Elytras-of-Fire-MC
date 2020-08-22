#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Corruption1] run tag @s add Corruption1_T1AO
execute if entity @s[tag=Corruption2] run tag @s add Corruption1_T2AO
execute if score @s[tag=!Corruption1_T1AO,tag=!Corruption1_T2AO] xp < t4 xp run tag @s add Corruption1_NEXp
execute if entity @s[tag=!Corruption1_T1AO,tag=!Corruption1_T2AO,tag=!Corruption1_NEXp] run tag @s add Corruption1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Corruption1_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Corruption I","color":"dark_gray","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Corruption1_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Corruption II","color":"dark_gray","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Corruption1_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Corruption 1
execute if entity @s[tag=Corruption1_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Corruption I","color":"dark_gray","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Corruption1_temp] run tag @s add Corruption1
execute if entity @s[tag=Corruption1_temp,tag=Corruption1] run xp add @s -400

#Remove CheckTags
tag @s[tag=Corruption1_T1AO] remove Corruption1_T1AO
tag @s[tag=Corruption1_T2AO] remove Corruption1_T2AO
tag @s[tag=Corruption1_NEXp] remove Corruption1_NEXp
tag @s[tag=Corruption1_temp] remove Corruption1_temp
scoreboard players set @s Corruption1 0
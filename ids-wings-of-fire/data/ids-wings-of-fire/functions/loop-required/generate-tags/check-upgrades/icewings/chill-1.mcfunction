#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Chill1] run tag @s add Chill1_T1AO
execute if entity @s[tag=Chill2] run tag @s add Chill1_T2AO
execute if score @s[tag=!Chill1_T1AO,tag=!Chill1_T2AO] xp < t4 xp run tag @s add Chill1_NEXp
execute if entity @s[tag=!Chill1_T1AO,tag=!Chill1_T2AO,tag=!Chill1_NEXp] run tag @s add Chill1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Chill1_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Chill I","color":"gray","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Chill1_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Chill II","color":"gray","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Chill1_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Chill 1
execute if entity @s[tag=Chill1_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Chill I","color":"gray","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Chill1_temp] run tag @s add Chill1
execute if entity @s[tag=Chill1_temp,tag=Chill1] run xp add @s -400

#Remove CheckTags
tag @s[tag=Chill1_T1AO] remove Chill1_T1AO
tag @s[tag=Chill1_T2AO] remove Chill1_T2AO
tag @s[tag=Chill1_NEXp] remove Chill1_NEXp
tag @s[tag=Chill1_temp] remove Chill1_temp
scoreboard players set @s Chill1 0
#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=HighTide1] run tag @s add HighTide3_T1AO
execute if entity @s[tag=HighTide2] run tag @s add HighTide3_T2AO
execute if entity @s[tag=HighTide3] run tag @s add HighTide3_T3AO
execute if score @s[tag=HighTide3_T2AO,tag=!HighTide3_T3AO] xp < t1 xp run tag @s add HighTide3_NEXp
execute if entity @s[tag=!HighTide3_T1AO,tag=HighTide3_T2AO,tag=!HighTide3_T3AO,tag=!HighTide3_NEXp] run tag @s add HighTide3_temp

#Announce Tier Already Owned
execute if entity @s[tag=HighTide3_T3AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"High Tide III","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=HighTide3_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[tag=!HighTide3_T2AO,tag=!HighTide3_T3AO] run tellraw @s [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase High Tide 3
execute if entity @s[tag=HighTide3_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"High Tide III","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=HighTide3_temp] run tag @s add HighTide3
execute if entity @s[tag=HighTide3_temp,tag=HighTide3] run xp add @s -300
execute if entity @s[tag=HighTide3_temp,tag=HighTide3] run tag @s remove HighTide2

#Remove CheckTags
tag @s[tag=HighTide3_T1AO] remove HighTide3_T1AO
tag @s[tag=HighTide3_T2AO] remove HighTide3_T2AO
tag @s[tag=HighTide3_T3AO] remove HighTide3_T3AO
tag @s[tag=HighTide3_NEXp] remove HighTide3_NEXp
tag @s[tag=HighTide3_temp] remove HighTide3_temp
scoreboard players set @s HighTide3 0
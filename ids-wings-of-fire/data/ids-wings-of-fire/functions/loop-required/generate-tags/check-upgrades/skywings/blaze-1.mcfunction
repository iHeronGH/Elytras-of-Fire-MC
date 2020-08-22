#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Blaze1] run tag @s add Blaze_T1AO
execute if score @s[tag=!Blaze_T1AO] xp < t3 xp run tag @s add Blaze_NEXp
execute if entity @s[tag=!Blaze_T1AO,tag=!Blaze_NEXp] run tag @s add Blaze_temp

#Announce Tier Already Owned
execute if entity @s[tag=Blaze_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Blaze I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Blaze_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Blaze 1
execute if entity @s[tag=Blaze_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Blaze I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Blaze_temp] run tag @s add Blaze1
execute if entity @s[tag=Blaze_temp,tag=Blaze1] run xp add @s -900

#Remove CheckTags
tag @s[tag=Blaze_T1AO] remove Blaze_T1AO
tag @s[tag=Blaze_NEXp] remove Blaze_NEXp
tag @s[tag=Blaze_temp] remove Blaze_temp
scoreboard players set @s Blaze1 0
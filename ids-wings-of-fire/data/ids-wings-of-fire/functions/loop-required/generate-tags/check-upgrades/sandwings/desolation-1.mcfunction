#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Desolation1] run tag @s add Desolation_T1AO
execute if score @s[tag=!Desolation_T1AO] xp < t3 xp run tag @s add Desolation_NEXp
execute if entity @s[tag=!Desolation_T1AO,tag=!Desolation_NEXp] run tag @s add Desolation_temp

#Announce Tier Already Owned
execute if entity @s[tag=Desolation_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Desolation I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Desolation_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Desolation 1
execute if entity @s[tag=Desolation_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Desolation I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Desolation_temp] run tag @s add Desolation1
execute if entity @s[tag=Desolation_temp,tag=Desolation1] run xp add @s -900

#Remove CheckTags
tag @s[tag=Desolation_T1AO] remove Desolation_T1AO
tag @s[tag=Desolation_NEXp] remove Desolation_NEXp
tag @s[tag=Desolation_temp] remove Desolation_temp
scoreboard players set @s Desolation1 0
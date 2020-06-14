#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Dehydrate1] run tag @s add Dehydrate2_T1AO
execute if entity @s[tag=Dehydrate2] run tag @s add Dehydrate2_T2AO
execute if score @s[tag=Dehydrate2_T1AO,tag=!Dehydrate2_T2AO] xp < t2 xp run tag @s add Dehydrate2_NEXp
execute if entity @s[tag=Dehydrate2_T1AO,tag=!Dehydrate2_T2AO,tag=!Dehydrate2_NEXp] run tag @s add Dehydrate2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Dehydrate2_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Dehydrate II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Dehydrate2_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[tag=!Dehydrate2_T1AO,tag=!Dehydrate2_T2AO] run tellraw @s [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Dehydrate 2
execute if entity @s[tag=Dehydrate2_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Dehydrate II","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Dehydrate2_temp] run tag @s add Dehydrate2
execute if entity @s[tag=Dehydrate2_temp,tag=Dehydrate2] run xp add @s -450
execute if entity @s[tag=Dehydrate2_temp,tag=Dehydrate2] run tag @s remove Dehydrate1

#Remove CheckTags
tag @s[tag=Dehydrate2_T1AO] remove Dehydrate2_T1AO
tag @s[tag=Dehydrate2_T2AO] remove Dehydrate2_T2AO
tag @s[tag=Dehydrate2_NEXp] remove Dehydrate2_NEXp
tag @s[tag=Dehydrate2_temp] remove Dehydrate2_temp
scoreboard players set @s Dehydrate2 0
#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Oxygenate1] run tag @s add Oxygenate2_T1AO
execute if entity @s[tag=Oxygenate2] run tag @s add Oxygenate2_T2AO
execute if entity @s[tag=Oxygenate3] run tag @s add Oxygenate2_T3AO
execute if score @s[tag=Oxygenate2_T1AO,tag=!Oxygenate2_T2AO,tag=!Oxygenate2_T3AO] xp < t1 xp run tag @s add Oxygenate2_NEXp
execute if entity @s[tag=Oxygenate2_T1AO,tag=!Oxygenate2_T2AO,tag=!Oxygenate2_T3AO,tag=!Oxygenate2_NEXp] run tag @s add Oxygenate2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Oxygenate2_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Oxygenate II","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Oxygenate2_T3AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Oxygenate III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Oxygenate2_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[tag=!Oxygenate2_T1AO,tag=!Oxygenate2_T2AO,tag=!Oxygenate2_T3AO] run tellraw @s [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Oxygenate 2
execute if entity @s[tag=Oxygenate2_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Oxygenate II","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Oxygenate2_temp] run tag @s add Oxygenate2
execute if entity @s[tag=Oxygenate2_temp,tag=Oxygenate2] run xp add @s -300
execute if entity @s[tag=Oxygenate2_temp,tag=Oxygenate2] run tag @s remove Oxygenate1

#Remove CheckTags
tag @s[tag=Oxygenate2_T1AO] remove Oxygenate2_T1AO
tag @s[tag=Oxygenate2_T2AO] remove Oxygenate2_T2AO
tag @s[tag=Oxygenate2_T3AO] remove Oxygenate2_T3AO
tag @s[tag=Oxygenate2_NEXp] remove Oxygenate2_NEXp
tag @s[tag=Oxygenate2_temp] remove Oxygenate2_temp
scoreboard players set @s Oxygenate2 0
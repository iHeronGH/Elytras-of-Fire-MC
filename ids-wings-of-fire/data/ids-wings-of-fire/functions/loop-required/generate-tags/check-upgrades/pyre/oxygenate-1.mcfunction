#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Oxygenate1] run tag @s add Oxygenate1_T1AO
execute if entity @s[tag=Oxygenate2] run tag @s add Oxygenate1_T2AO
execute if entity @s[tag=Oxygenate3] run tag @s add Oxygenate1_T3AO
execute if score @s[tag=!Oxygenate1_T1AO,tag=!Oxygenate1_T2AO,tag=!Oxygenate1_T3AO] xp < t1 xp run tag @s add Oxygenate1_NEXp
execute if entity @s[tag=!Oxygenate1_T1AO,tag=!Oxygenate1_T2AO,tag=!Oxygenate1_T3AO,tag=!Oxygenate1_NEXp] run tag @s add Oxygenate1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Oxygenate1_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Oxygenate I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Oxygenate1_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Oxygenate II","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Oxygenate1_T3AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Oxygenate III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Oxygenate1_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Oxygenate 1
execute if entity @s[tag=Oxygenate1_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Oxygenate I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Oxygenate1_temp] run tag @s add Oxygenate1
execute if entity @s[tag=Oxygenate1_temp,tag=Oxygenate1] run xp add @s -300

#Remove CheckTags
tag @s[tag=Oxygenate1_T1AO] remove Oxygenate1_T1AO
tag @s[tag=Oxygenate1_T2AO] remove Oxygenate1_T2AO
tag @s[tag=Oxygenate1_T3AO] remove Oxygenate1_T3AO
tag @s[tag=Oxygenate1_NEXp] remove Oxygenate1_NEXp
tag @s[tag=Oxygenate1_temp] remove Oxygenate1_temp
scoreboard players set @s Oxygenate1 0
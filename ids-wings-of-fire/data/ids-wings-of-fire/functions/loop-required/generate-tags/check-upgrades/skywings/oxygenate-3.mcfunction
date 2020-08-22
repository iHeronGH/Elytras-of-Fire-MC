#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Oxygenate1] run tag @s add Oxygenate3_T1AO
execute if entity @s[tag=Oxygenate2] run tag @s add Oxygenate3_T2AO
execute if entity @s[tag=Oxygenate3] run tag @s add Oxygenate3_T3AO
execute if score @s[tag=Oxygenate3_T2AO,tag=!Oxygenate3_T3AO] xp < t1 xp run tag @s add Oxygenate3_NEXp
execute if entity @s[tag=!Oxygenate3_T1AO,tag=Oxygenate3_T2AO,tag=!Oxygenate3_T3AO,tag=!Oxygenate3_NEXp] run tag @s add Oxygenate3_temp

#Announce Tier Already Owned
execute if entity @s[tag=Oxygenate3_T3AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Oxygenate III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Oxygenate3_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[tag=!Oxygenate3_T2AO,tag=!Oxygenate3_T3AO] run tellraw @s [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Oxygenate 3
execute if entity @s[tag=Oxygenate3_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Oxygenate III","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Oxygenate3_temp] run tag @s add Oxygenate3
execute if entity @s[tag=Oxygenate3_temp,tag=Oxygenate3] run xp add @s -300
execute if entity @s[tag=Oxygenate3_temp,tag=Oxygenate3] run tag @s remove Oxygenate2

#Remove CheckTags
tag @s[tag=Oxygenate3_T1AO] remove Oxygenate3_T1AO
tag @s[tag=Oxygenate3_T2AO] remove Oxygenate3_T2AO
tag @s[tag=Oxygenate3_T3AO] remove Oxygenate3_T3AO
tag @s[tag=Oxygenate3_NEXp] remove Oxygenate3_NEXp
tag @s[tag=Oxygenate3_temp] remove Oxygenate3_temp
scoreboard players set @s Oxygenate3 0
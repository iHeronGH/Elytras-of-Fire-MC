#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Scorch1] run tag @s add Scorch3_T1AO
execute if entity @s[tag=Scorch2] run tag @s add Scorch3_T2AO
execute if entity @s[tag=Scorch3] run tag @s add Scorch3_T3AO
execute if score @s[tag=Scorch3_T2AO,tag=!Scorch3_T3AO] xp < t1 xp run tag @s add Scorch3_NEXp
execute if entity @s[tag=!Scorch3_T1AO,tag=Scorch3_T2AO,tag=!Scorch3_T3AO,tag=!Scorch3_NEXp] run tag @s add Scorch3_temp

#Announce Tier Already Owned
execute if entity @s[tag=Scorch3_T3AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Scorch III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Scorch3_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[tag=!Scorch3_T2AO,tag=!Scorch3_T3AO] run tellraw @s [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Scorch 3
execute if entity @s[tag=Scorch3_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Scorch III","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Scorch3_temp] run tag @s add Scorch3
execute if entity @s[tag=Scorch3_temp,tag=Scorch3] run xp add @s -300
execute if entity @s[tag=Scorch3_temp,tag=Scorch3] run tag @s remove Scorch2

#Remove CheckTags
tag @s[tag=Scorch3_T1AO] remove Scorch3_T1AO
tag @s[tag=Scorch3_T2AO] remove Scorch3_T2AO
tag @s[tag=Scorch3_T3AO] remove Scorch3_T3AO
tag @s[tag=Scorch3_NEXp] remove Scorch3_NEXp
tag @s[tag=Scorch3_temp] remove Scorch3_temp
scoreboard players set @s Scorch3 0
#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Scorch1] run tag @s add Scorch1_T1AO
execute if entity @s[tag=Scorch2] run tag @s add Scorch1_T2AO
execute if entity @s[tag=Scorch3] run tag @s add Scorch1_T3AO
execute if score @s[tag=!Scorch1_T1AO,tag=!Scorch1_T2AO,tag=!Scorch1_T3AO] xp < t1 xp run tag @s add Scorch1_NEXp
execute if entity @s[tag=!Scorch1_T1AO,tag=!Scorch1_T2AO,tag=!Scorch1_T3AO,tag=!Scorch1_NEXp] run tag @s add Scorch1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Scorch1_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Scorch I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Scorch1_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Scorch II","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Scorch1_T3AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Scorch III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Scorch1_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Scorch 1
execute if entity @s[tag=Scorch1_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Scorch I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Scorch1_temp] run tag @s add Scorch1
execute if entity @s[tag=Scorch1_temp,tag=Scorch1] run xp add @s -300

#Remove CheckTags
tag @s[tag=Scorch1_T1AO] remove Scorch1_T1AO
tag @s[tag=Scorch1_T2AO] remove Scorch1_T2AO
tag @s[tag=Scorch1_T3AO] remove Scorch1_T3AO
tag @s[tag=Scorch1_NEXp] remove Scorch1_NEXp
tag @s[tag=Scorch1_temp] remove Scorch1_temp
scoreboard players set @s Scorch1 0
#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=GaleForce1] run tag @s add GaleForce1_T1AO
execute if entity @s[tag=GaleForce2] run tag @s add GaleForce1_T2AO
execute if score @s[tag=!GaleForce1_T1AO,tag=!GaleForce1_T2AO] xp < t4 xp run tag @s add GaleForce1_NEXp
execute if entity @s[tag=!GaleForce1_T1AO,tag=!GaleForce1_T2AO,tag=!GaleForce1_NEXp] run tag @s add GaleForce1_temp

#Announce Tier Already Owned
execute if entity @s[tag=GaleForce1_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Gale Force I","color":"dark_red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=GaleForce1_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Gale Force II","color":"dark_red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=GaleForce1_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase GaleForce 1
execute if entity @s[tag=GaleForce1_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Gale Force I","color":"dark_red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=GaleForce1_temp] run tag @s add GaleForce1
execute if entity @s[tag=GaleForce1_temp,tag=GaleForce1] run xp add @s -400

#Remove CheckTags
tag @s[tag=GaleForce1_T1AO] remove GaleForce1_T1AO
tag @s[tag=GaleForce1_T2AO] remove GaleForce1_T2AO
tag @s[tag=GaleForce1_NEXp] remove GaleForce1_NEXp
tag @s[tag=GaleForce1_temp] remove GaleForce1_temp
scoreboard players set @s GaleForce1 0
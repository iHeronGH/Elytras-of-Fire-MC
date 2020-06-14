#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=GaleForce1] run tag @s add GaleForce2_T1AO
execute if entity @s[tag=GaleForce2] run tag @s add GaleForce2_T2AO
execute if score @s[tag=GaleForce2_T1AO,tag=!GaleForce2_T2AO] xp < t4 xp run tag @s add GaleForce2_NEXp
execute if entity @s[tag=GaleForce2_T1AO,tag=!GaleForce2_T2AO,tag=!GaleForce2_NEXp] run tag @s add GaleForce2_temp

#Announce Tier Already Owned
execute if entity @s[tag=GaleForce2_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Gale Force II","color":"dark_red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=GaleForce2_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[tag=!GaleForce2_T1AO,tag=!GaleForce2_T2AO] run tellraw @s [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase GaleForce 2
execute if entity @s[tag=GaleForce2_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Gale Force II","color":"dark_red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=GaleForce2_temp] run tag @s add GaleForce2
execute if entity @s[tag=GaleForce2_temp,tag=GaleForce2] run xp add @s -400
execute if entity @s[tag=GaleForce2_temp,tag=GaleForce2] run tag @s remove GaleForce1

#Remove CheckTags
tag @s[tag=GaleForce2_T1AO] remove GaleForce2_T1AO
tag @s[tag=GaleForce2_T2AO] remove GaleForce2_T2AO
tag @s[tag=GaleForce2_NEXp] remove GaleForce2_NEXp
tag @s[tag=GaleForce2_temp] remove GaleForce2_temp
scoreboard players set @s GaleForce2 0
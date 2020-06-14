#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Reaction1] run tag @s add Reaction2_T1AO
execute if entity @s[tag=Reaction2] run tag @s add Reaction2_T2AO
execute if entity @s[tag=Reaction3] run tag @s add Reaction2_T3AO
execute if score @s[tag=Reaction2_T1AO,tag=!Reaction2_T2AO,tag=!Reaction2_T3AO] xp < t1 xp run tag @s add Reaction2_NEXp
execute if entity @s[tag=Reaction2_T1AO,tag=!Reaction2_T2AO,tag=!Reaction2_T3AO,tag=!Reaction2_NEXp] run tag @s add Reaction2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Reaction2_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Reaction II","color":"white","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Reaction2_T3AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Reaction III","color":"white","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Reaction2_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[tag=!Reaction2_T1AO,tag=!Reaction2_T2AO,tag=!Reaction2_T3AO] run tellraw @s [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Reaction 2
execute if entity @s[tag=Reaction2_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Reaction II","color":"white","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Reaction2_temp] run tag @s add Reaction2
execute if entity @s[tag=Reaction2_temp,tag=Reaction2] run xp add @s -300
execute if entity @s[tag=Reaction2_temp,tag=Reaction2] run tag @s remove Reaction1

#Remove CheckTags
tag @s[tag=Reaction2_T1AO] remove Reaction2_T1AO
tag @s[tag=Reaction2_T2AO] remove Reaction2_T2AO
tag @s[tag=Reaction2_T3AO] remove Reaction2_T3AO
tag @s[tag=Reaction2_NEXp] remove Reaction2_NEXp
tag @s[tag=Reaction2_temp] remove Reaction2_temp
scoreboard players set @s Reaction2 0
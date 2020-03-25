#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={ArcticCore2=1..},tag=ArcticCore1] run tag @s add ArcticCore2_T1AO
execute if entity @s[scores={ArcticCore2=1..},tag=ArcticCore2] run tag @s add ArcticCore2_T2AO
execute if entity @s[scores={ArcticCore2=1..},tag=ArcticCore3] run tag @s add ArcticCore2_T3AO
execute if score @s[scores={ArcticCore2=1..},tag=ArcticCore2_T1AO,tag=!ArcticCore2_T2AO,tag=!ArcticCore2_T3AO] xp < t1 xp run tag @s add ArcticCore2_NEXp
execute if entity @s[scores={ArcticCore2=1..},tag=ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3,tag=ArcticCore2_T1AO,tag=!ArcticCore2_T2AO,tag=!ArcticCore2_T3AO,tag=!ArcticCore2_NEXp] if score @s xp >= t1 xp run tag @s add ArcticCore2_temp

#Announce Tier Already Owned
execute if entity @s[tag=ArcticCore2_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Arctic Core II","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=ArcticCore2_T3AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Arctic Core III","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=ArcticCore2_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[scores={ArcticCore2=1..},tag=!ArcticCore2_T1AO,tag=!ArcticCore2_T2AO,tag=!ArcticCore2_T3AO] run tellraw @s ["",{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Arctic Core 2
execute if entity @s[tag=ArcticCore2_temp] run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Arctic Core II","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=ArcticCore2_temp] run tag @s add ArcticCore2
execute if entity @s[tag=ArcticCore2_temp,tag=ArcticCore2] run xp add @s -300
execute if entity @s[tag=ArcticCore2_temp,tag=ArcticCore2] run tag @s remove ArcticCore1

#Remove CheckTags
tag @s[tag=ArcticCore2_T1AO] remove ArcticCore2_T1AO
tag @s[tag=ArcticCore2_T2AO] remove ArcticCore2_T2AO
tag @s[tag=ArcticCore2_T3AO] remove ArcticCore2_T3AO
tag @s[tag=ArcticCore2_NEXp] remove ArcticCore2_NEXp
tag @s[tag=ArcticCore2_temp] remove ArcticCore2_temp
scoreboard players set @s ArcticCore2 0
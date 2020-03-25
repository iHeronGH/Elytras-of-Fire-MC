#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={ArcticCore1=1..},tag=ArcticCore1] run tag @s add ArcticCore1_T1AO
execute if entity @s[scores={ArcticCore1=1..},tag=ArcticCore2] run tag @s add ArcticCore1_T2AO
execute if entity @s[scores={ArcticCore1=1..},tag=ArcticCore3] run tag @s add ArcticCore1_T3AO
execute if score @s[scores={ArcticCore1=1..},tag=!ArcticCore1_T1AO,tag=!ArcticCore1_T2AO,tag=!ArcticCore1_T3AO] xp < t1 xp run tag @s add ArcticCore1_NEXp
execute if entity @s[scores={ArcticCore1=1..},tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3,tag=!ArcticCore1_T1AO,tag=!ArcticCore1_T2AO,tag=!ArcticCore1_T3AO,tag=!ArcticCore1_NEXp] if score @s xp >= t1 xp run tag @s add ArcticCore1_temp

#Announce Tier Already Owned
execute if entity @s[tag=ArcticCore1_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Arctic Core I","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=ArcticCore1_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Arctic Core II","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=ArcticCore1_T3AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Arctic Core III","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=ArcticCore1_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Arctic Core 1
execute if entity @s[tag=ArcticCore1_temp] run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Arctic Core I","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=ArcticCore1_temp] run tag @s add ArcticCore1
execute if entity @s[tag=ArcticCore1_temp,tag=ArcticCore1] run xp add @s -300

#Remove CheckTags
tag @s[tag=ArcticCore1_T1AO] remove ArcticCore1_T1AO
tag @s[tag=ArcticCore1_T2AO] remove ArcticCore1_T2AO
tag @s[tag=ArcticCore1_T3AO] remove ArcticCore1_T3AO
tag @s[tag=ArcticCore1_NEXp] remove ArcticCore1_NEXp
tag @s[tag=ArcticCore1_temp] remove ArcticCore1_temp
scoreboard players set @s ArcticCore1 0
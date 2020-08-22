#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
tag @s[tag=ArcticCore1] add ArcticCore1_T1AO
tag @s[tag=ArcticCore2] add ArcticCore1_T2AO
tag @s[tag=ArcticCore3] add ArcticCore1_T3AO
execute if score @s[tag=!ArcticCore1_T1AO,tag=!ArcticCore1_T2AO,tag=!ArcticCore1_T3AO] xp < t1 xp run tag @s add ArcticCore1_NEXp
tag @s[tag=!ArcticCore1_T1AO,tag=!ArcticCore1_T2AO,tag=!ArcticCore1_T3AO,tag=!ArcticCore1_NEXp] add ArcticCore1_temp

#Announce Tier Already Owned
tellraw @s[tag=ArcticCore1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Arctic Core I","color":"aqua","bold":true},{"text":"!","color":"gray"}]
tellraw @s[tag=ArcticCore1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Arctic Core II","color":"aqua","bold":true},{"text":"!","color":"gray"}]
tellraw @s[tag=ArcticCore1_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Arctic Core III","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
tellraw @s[tag=ArcticCore1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Arctic Core 1
tellraw @s[tag=ArcticCore1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Arctic Core I","color":"aqua","bold":true},{"text":"!","color":"gray"}]
tag @s[tag=ArcticCore1_temp] add ArcticCore1
xp add @s[tag=ArcticCore1_temp,tag=ArcticCore1] -300

#Remove CheckTags
tag @s[tag=ArcticCore1_T1AO] remove ArcticCore1_T1AO
tag @s[tag=ArcticCore1_T2AO] remove ArcticCore1_T2AO
tag @s[tag=ArcticCore1_T3AO] remove ArcticCore1_T3AO
tag @s[tag=ArcticCore1_NEXp] remove ArcticCore1_NEXp
tag @s[tag=ArcticCore1_temp] remove ArcticCore1_temp
scoreboard players set @s ArcticCore1 0
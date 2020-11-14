#Add CheckTags
tag @s[tag=EternalFlame1] add ef2_T1AO
tag @s[tag=EternalFlame2] add ef2_T2AO
execute if score @s[tag=ef2_T1AO,tag=!ef2_T2AO] xp < t2 xp run tag @s add ef2_NEXp
tag @s[tag=ef2_T1AO,tag=!ef2_T2AO,tag=!ef2_NEXp] add ef2_temp

#Announce Tier Already Owned
tellraw @s[tag=ef2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"EternalFlame II","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=ef2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!ef2_T1AO,tag=!ef2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase EternalFlame 2
tellraw @s[tag=ef2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"EternalFlame II","color":"red","bold":true},{"text":"!"}]
tag @s[tag=ef2_temp] add EternalFlame2
xp add @s[tag=ef2_temp,tag=EternalFlame2] -450
tag @s[tag=ef2_temp,tag=EternalFlame2] remove EternalFlame1

#Remove CheckTags
tag @s[tag=ef2_T1AO] remove ef2_T1AO
tag @s[tag=ef2_T2AO] remove ef2_T2AO
tag @s[tag=ef2_NEXp] remove ef2_NEXp
tag @s[tag=ef2_temp] remove ef2_temp
scoreboard players set @s EternalFlame2 0
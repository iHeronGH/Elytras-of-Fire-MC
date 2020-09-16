#Add CheckTags
tag @s[tag=Chill1] add ch2_T1AO
tag @s[tag=Chill2] add ch2_T2AO
execute if score @s[tag=ch2_T1AO,tag=!ch2_T2AO] xp < t4 xp run tag @s add ch2_NEXp
tag @s[tag=ch2_T1AO,tag=!ch2_T2AO,tag=!ch2_NEXp] add ch2_temp

#Announce Tier Already Owned
tellraw @s[tag=ch2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Chill II","color":"gray","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=ch2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!ch2_T1AO,tag=!ch2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Chill 2
tellraw @s[tag=ch2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Chill II","color":"gray","bold":true},{"text":"!"}]
tag @s[tag=ch2_temp] add Chill2
xp add @s[tag=ch2_temp,tag=Chill2] -500
tag @s[tag=ch2_temp,tag=Chill2] remove Chill1

#Remove CheckTags
tag @s[tag=ch2_T1AO] remove ch2_T1AO
tag @s[tag=ch2_T2AO] remove ch2_T2AO
tag @s[tag=ch2_NEXp] remove ch2_NEXp
tag @s[tag=ch2_temp] remove ch2_temp
scoreboard players set @s Chill2 0
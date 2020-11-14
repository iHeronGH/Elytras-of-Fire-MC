#Add CheckTags
tag @s[tag=Everburn1] add eb2_T1AO
tag @s[tag=Everburn2] add eb2_T2AO
execute if score @s[tag=eb2_T1AO,tag=!eb2_T2AO] xp < t2 xp run tag @s add eb2_NEXp
tag @s[tag=eb2_T1AO,tag=!eb2_T2AO,tag=!eb2_NEXp] add eb2_temp

#Announce Tier Already Owned
tellraw @s[tag=eb2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Everburn II","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=eb2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!eb2_T1AO,tag=!eb2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Everburn 2
tellraw @s[tag=eb2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Everburn II","color":"red","bold":true},{"text":"!"}]
tag @s[tag=eb2_temp] add Everburn2
xp add @s[tag=eb2_temp,tag=Everburn2] -450
tag @s[tag=eb2_temp,tag=Everburn2] remove Everburn1

#Remove CheckTags
tag @s[tag=eb2_T1AO] remove eb2_T1AO
tag @s[tag=eb2_T2AO] remove eb2_T2AO
tag @s[tag=eb2_NEXp] remove eb2_NEXp
tag @s[tag=eb2_temp] remove eb2_temp
scoreboard players set @s Everburn2 0
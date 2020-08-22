#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Superheat1] run tag @s add Superheat2_T1AO
execute if entity @s[tag=Superheat2] run tag @s add Superheat2_T2AO
execute if entity @s[tag=Superheat3] run tag @s add Superheat2_T3AO
execute if score @s[tag=Superheat2_T1AO,tag=!Superheat2_T2AO,tag=!Superheat2_T3AO] xp < t1 xp run tag @s add Superheat2_NEXp
execute if entity @s[tag=Superheat2_T1AO,tag=!Superheat2_T2AO,tag=!Superheat2_T3AO,tag=!Superheat2_NEXp] run tag @s add Superheat2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Superheat2_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Superheat II","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Superheat2_T3AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Superheat III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Superheat2_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[tag=!Superheat2_T1AO,tag=!Superheat2_T2AO,tag=!Superheat2_T3AO] run tellraw @s [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Superheat 2
execute if entity @s[tag=Superheat2_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Superheat II","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Superheat2_temp] run tag @s add Superheat2
execute if entity @s[tag=Superheat2_temp,tag=Superheat2] run xp add @s -300
execute if entity @s[tag=Superheat2_temp,tag=Superheat2] run tag @s remove Superheat1

#Remove CheckTags
tag @s[tag=Superheat2_T1AO] remove Superheat2_T1AO
tag @s[tag=Superheat2_T2AO] remove Superheat2_T2AO
tag @s[tag=Superheat2_T3AO] remove Superheat2_T3AO
tag @s[tag=Superheat2_NEXp] remove Superheat2_NEXp
tag @s[tag=Superheat2_temp] remove Superheat2_temp
scoreboard players set @s Superheat2 0
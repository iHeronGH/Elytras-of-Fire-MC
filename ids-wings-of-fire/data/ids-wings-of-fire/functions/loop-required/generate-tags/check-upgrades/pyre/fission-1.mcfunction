#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Fission1=1..},tag=Fission1] run tag @s add Fission_T1AO
execute if score @s[scores={Fission1=1..},tag=!Fission_T1AO] xp < t3 xp run tag @s add Fission_NEXp
execute if entity @s[scores={Fission1=1..},tag=!Fission1,tag=!Fission_T1AO,tag=!Fission_NEXp] if score @s xp >= t3 xp run tag @s add Fission_temp

#Announce Tier Already Owned
execute if entity @s[tag=Fission_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Fission I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Fission_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Fission 1
execute if entity @s[tag=Fission_temp] run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Fission I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Fission_temp] run tag @s add Fission1
execute if entity @s[tag=Fission_temp,tag=Fission1] run xp add @s -900

#Remove CheckTags
tag @s[tag=Fission_T1AO] remove Fission_T1AO
tag @s[tag=Fission_NEXp] remove Fission_NEXp
tag @s[tag=Fission_temp] remove Fission_temp
scoreboard players set @s Fission1 0
#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Reaction1=1..},tag=Reaction1] run tag @s add Reaction1_T1AO
execute if entity @s[scores={Reaction1=1..},tag=Reaction2] run tag @s add Reaction1_T2AO
execute if entity @s[scores={Reaction1=1..},tag=Reaction3] run tag @s add Reaction1_T3AO
execute if score @s[scores={Reaction1=1..},tag=!Reaction1_T1AO,tag=!Reaction1_T2AO,tag=!Reaction1_T3AO] xp < t1 xp run tag @s add Reaction1_NEXp
execute if entity @s[scores={Reaction1=1..},tag=!Reaction1,tag=!Reaction2,tag=!Reaction3,tag=!Reaction1_T1AO,tag=!Reaction1_T2AO,tag=!Reaction1_T3AO,tag=!Reaction1_NEXp] if score @s xp >= t1 xp run tag @s add Reaction1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Reaction1_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Reaction I","color":"white","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Reaction1_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Reaction II","color":"white","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Reaction1_T3AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Reaction III","color":"white","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Reaction1_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Reaction 1
execute if entity @s[tag=Reaction1_temp] run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Reaction I","color":"white","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Reaction1_temp] run tag @s add Reaction1
execute if entity @s[tag=Reaction1_temp,tag=Reaction1] run xp add @s -300

#Remove CheckTags
tag @s[tag=Reaction1_T1AO] remove Reaction1_T1AO
tag @s[tag=Reaction1_T2AO] remove Reaction1_T2AO
tag @s[tag=Reaction1_T3AO] remove Reaction1_T3AO
tag @s[tag=Reaction1_NEXp] remove Reaction1_NEXp
tag @s[tag=Reaction1_temp] remove Reaction1_temp
scoreboard players set @s Reaction1 0
#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Reaction 1
execute if entity @e[type=player,tag=Reaction1Purchase,tag=!Reaction1,tag=!Reaction2,tag=!Reaction3] run tellraw @e[type=player,tag=Reaction1Purchase,tag=!Reaction1,tag=!Reaction2,tag=!Reaction3] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Reaction I","color":"white","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Reaction1Purchase,tag=Reaction1] run tellraw @e[type=player,tag=Reaction1Purchase,tag=Reaction1] ["",{"text":"You already own ","color":"gray"},{"text":"Reaction I","color":"white","bold":true},{"text":"!","color":"gray"}]
execute if entity @e[type=player,tag=Reaction1Purchase,tag=Reaction2] run tellraw @e[type=player,tag=Reaction1Purchase,tag=Reaction2] ["",{"text":"You already own ","color":"gray"},{"text":"Reaction II","color":"white","bold":true},{"text":"!","color":"gray"}]
execute if entity @e[type=player,tag=Reaction1Purchase,tag=Reaction3] run tellraw @e[type=player,tag=Reaction1Purchase,tag=Reaction3] ["",{"text":"You already own ","color":"gray"},{"text":"Reaction III","color":"white","bold":true},{"text":"!","color":"gray"}]

#Tag Reaction1
execute if entity @e[type=player,tag=Reaction1Purchase,tag=!Reaction1] run tag @e[type=player,tag=Reaction1Purchase,tag=!Reaction1] add Reaction1

#Remove Purchase Tag
execute if entity @e[type=player,tag=Reaction1] run tag @e[type=player,tag=Reaction1] remove Reaction1Purchase
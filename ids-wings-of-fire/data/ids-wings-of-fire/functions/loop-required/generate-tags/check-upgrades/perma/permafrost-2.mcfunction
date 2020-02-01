#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Permafrost 2
execute if entity @e[type=player,tag=Permafrost2Purchase,tag=!Permafrost2] run tellraw @e[type=player,tag=Permafrost2Purchase,tag=!Permafrost2] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Permafrost II","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Permafrost2Purchase,tag=Permafrost2] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Permafrost II","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Tag Permafrost2
execute if entity @e[type=player,tag=Permafrost2Purchase,tag=!Permafrost2] run tag @e[type=player,tag=Permafrost2Purchase,tag=!Permafrost2] add Permafrost2

#Remove Purchase Tag
execute if entity @e[type=player,tag=Permafrost2] run tag @e[type=player,tag=Permafrost2] remove Permafrost2Purchase
execute if entity @e[type=player,tag=Permafrost2,tag=Permafrost1] run tag @e[type=player,tag=Permafrost2,tag=Permafrost1] remove Permafrost1
#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Arctic Core 1
execute if entity @e[type=player,tag=ArcticCore1Purchase,tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3] run tellraw @e[type=player,tag=ArcticCore1Purchase,tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Arctic Core I","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=ArcticCore1Purchase,tag=ArcticCore1] run tellraw @e[type=player,tag=ArcticCore1Purchase,tag=ArcticCore1] ["",{"text":"You already own ","color":"gray"},{"text":"Arctic Core I","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @e[type=player,tag=ArcticCore1Purchase,tag=ArcticCore2] run tellraw @e[type=player,tag=ArcticCore1Purchase,tag=ArcticCore2] ["",{"text":"You already own ","color":"gray"},{"text":"Arctic Core II","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @e[type=player,tag=ArcticCore1Purchase,tag=ArcticCore3] run tellraw @e[type=player,tag=ArcticCore1Purchase,tag=ArcticCore3] ["",{"text":"You already own ","color":"gray"},{"text":"Arctic Core III","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Tag ArcticCore1
execute if entity @e[type=player,tag=ArcticCore1Purchase,tag=!ArcticCore1] run tag @e[type=player,tag=ArcticCore1Purchase,tag=!ArcticCore1] add ArcticCore1

#Remove Purchase Tag
execute if entity @e[type=player,tag=ArcticCore1] run tag @e[type=player,tag=ArcticCore1] remove ArcticCore1Purchase
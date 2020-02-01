#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Superheat 1
execute if entity @e[type=player,tag=Superheat1Purchase,tag=!Superheat1,tag=!Superheat2,tag=!Superheat3] run tellraw @e[type=player,tag=Superheat1Purchase,tag=!Superheat1,tag=!Superheat2,tag=!Superheat3] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Superheat I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Superheat1Purchase,tag=Superheat1] run tellraw @e[type=player,tag=Superheat1Purchase,tag=Superheat1] ["",{"text":"You already own ","color":"gray"},{"text":"Superheat I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @e[type=player,tag=Superheat1Purchase,tag=Superheat2] run tellraw @e[type=player,tag=Superheat1Purchase,tag=Superheat2] ["",{"text":"You already own ","color":"gray"},{"text":"Superheat II","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @e[type=player,tag=Superheat1Purchase,tag=Superheat3] run tellraw @e[type=player,tag=Superheat1Purchase,tag=Superheat3] ["",{"text":"You already own ","color":"gray"},{"text":"Superheat III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Tag Superheat1
execute if entity @e[type=player,tag=Superheat1Purchase,tag=!Superheat1] run tag @e[type=player,tag=Superheat1Purchase,tag=!Superheat1] add Superheat1

#Remove Purchase Tag
execute if entity @e[type=player,tag=Superheat1] run tag @e[type=player,tag=Superheat1] remove Superheat1Purchase
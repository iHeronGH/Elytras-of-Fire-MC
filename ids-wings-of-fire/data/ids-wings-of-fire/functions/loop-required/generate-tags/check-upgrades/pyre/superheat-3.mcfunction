#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Superheat 1
execute if entity @e[type=player,tag=Superheat3Purchase,tag=!Superheat3] run tellraw @e[type=player,tag=Superheat3Purchase,tag=!Superheat3] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Superheat III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Superheat3Purchase,tag=Superheat3] run tellraw @e[type=player,tag=Superheat3Purchase,tag=Superheat3] ["",{"text":"You already own ","color":"gray"},{"text":"Superheat III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Tag Superheat1
execute if entity @e[type=player,tag=Superheat3Purchase,tag=!Superheat3] run tag @e[type=player,tag=Superheat3Purchase,tag=!Superheat3] add Superheat3

#Remove Purchase Tag
execute if entity @e[type=player,tag=Superheat3] run tag @e[type=player,tag=Superheat3] remove Superheat3Purchase
execute if entity @e[type=player,tag=Superheat3,tag=Superheat2] run tag @e[type=player,tag=Superheat3,tag=Superheat2] remove Superheat2
execute if entity @e[type=player,tag=Superheat3,tag=Superheat1] run tag @e[type=player,tag=Superheat3,tag=Superheat1] remove Superheat1
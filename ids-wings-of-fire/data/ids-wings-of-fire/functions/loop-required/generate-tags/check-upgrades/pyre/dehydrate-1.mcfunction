#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Dehydrate 1
execute if entity @e[type=player,tag=Dehydrate1Purchase,tag=!Dehydrate1,tag=!Dehydrate2] run tellraw @e[type=player,tag=Dehydrate1Purchase,tag=!Dehydrate1,tag=!Dehydrate2] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Dehydrate I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Dehydrate1Purchase,tag=Dehydrate1] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Dehydrate I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @e[type=player,tag=Dehydrate1Purchase,tag=Dehydrate2] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Dehydrate II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Tag Dehydrate1
execute if entity @e[type=player,tag=Dehydrate1Purchase,tag=!Dehydrate1] run tag @e[type=player,tag=Dehydrate1Purchase,tag=!Dehydrate1] add Dehydrate1

#Remove Purchase Tag
execute if entity @e[type=player,tag=Dehydrate1] run tag @e[type=player,tag=Dehydrate1] remove Dehydrate1Purchase
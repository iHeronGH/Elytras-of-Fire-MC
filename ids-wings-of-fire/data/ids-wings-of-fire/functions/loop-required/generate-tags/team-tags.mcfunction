#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Tag Pyre
execute if entity @e[type=player,team=MudWings,tag=!Pyre] run tag @e[type=player,team=MudWings,tag=!Pyre] add Pyre
execute if entity @e[type=player,team=NightWings,tag=!Pyre] run tag @e[type=player,team=NightWings,tag=!Pyre] add Pyre
execute if entity @e[type=player,team=SandWings,tag=!Pyre] run tag @e[type=player,team=SandWings,tag=!Pyre] add Pyre
execute if entity @e[type=player,team=SkyWings,tag=!Pyre] run tag @e[type=player,team=SkyWings,tag=!Pyre] add Pyre
execute if entity @e[type=player,team=IceWings,tag=Pyre] run tag @e[type=player,team=IceWings] remove Pyre
execute if entity @e[type=player,team=RainWings,tag=Pyre] run tag @e[type=player,team=RainWings] remove Pyre
execute if entity @e[type=player,team=SeaWings,tag=Pyre] run tag @e[type=player,team=SeaWings] remove Pyre
execute if entity @e[type=player,team=,tag=Pyre] run tag @e[type=player,team=] remove Pyre

#Tag Perma
execute if entity @e[type=player,team=IceWings,tag=!Perma] run tag @e[type=player,team=IceWings,tag=!Perma] add Perma
execute if entity @e[type=player,team=!IceWings,tag=Perma] run tag @e[type=player,team=!IceWings,tag=Perma] remove Perma

#Tag Potent
execute if entity @e[type=player,team=RainWings,tag=!Potent] run tag @e[type=player,team=RainWings,tag=!Potent] add Potent
execute if entity @e[type=player,team=!RainWings,tag=Potent] run tag @e[type=player,team=!RainWings,tag=Potent] remove Potent

#Tag Porous
execute if entity @e[type=player,team=SeaWings,tag=!Porous] run tag @e[type=player,team=SeaWings,tag=!Porous] add Porous
execute if entity @e[type=player,team=!SeaWings,tag=Porous] run tag @e[type=player,team=!SeaWings,tag=Porous] remove Porous
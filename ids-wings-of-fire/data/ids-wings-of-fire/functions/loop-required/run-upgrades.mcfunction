#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Runs Upgrades
execute if entity @e[type=player,team=!] run scoreboard players enable @e[type=player,team=!] Upgrades
execute if entity @e[type=player,team=IceWings] run function ids-wings-of-fire:loop-required/upgrades/icewing-upgrades
execute if entity @e[type=player,team=MudWings] run function ids-wings-of-fire:loop-required/upgrades/mudwing-upgrades
execute if entity @e[type=player,team=NightWings] run function ids-wings-of-fire:loop-required/upgrades/nightwing-upgrades
execute if entity @e[type=player,team=RainWings] run function ids-wings-of-fire:loop-required/upgrades/rainwing-upgrades
execute if entity @e[type=player,team=SandWings] run function ids-wings-of-fire:loop-required/upgrades/sandwing-upgrades
execute if entity @e[type=player,team=SeaWings] run function ids-wings-of-fire:loop-required/upgrades/seawing-upgrades
execute if entity @e[type=player,team=SkyWings] run function ids-wings-of-fire:loop-required/upgrades/skywing-upgrades
execute if entity @e[type=player,team=!] run function ids-wings-of-fire:loop-required/upgrades/display-upgrade-gui

execute if entity @e[type=player,scores={Upgrades=1..}] run scoreboard players set @e[type=player,scores={Upgrades=1..}] Upgrades 0
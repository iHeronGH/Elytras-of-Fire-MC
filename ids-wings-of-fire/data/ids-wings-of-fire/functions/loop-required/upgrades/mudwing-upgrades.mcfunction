#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Activate Upgrades
scoreboard players enable @s Furnace1
scoreboard players enable @s Furnace2
scoreboard players enable @s Furnace3
scoreboard players enable @s Everburn1
scoreboard players enable @s Everburn2
scoreboard players enable @s Inferno1
scoreboard players enable @s Tremors1
scoreboard players enable @s Tremors2
scoreboard players enable @s Aftershock1
scoreboard players enable @s Aftershock2

execute if entity @s[scores={Furnace1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/furnace-1
execute if entity @s[scores={Furnace2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/furnace-2
execute if entity @s[scores={Furnace3=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/furnace-3
execute if entity @s[scores={Everburn1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/everburn-1
execute if entity @s[scores={Everburn2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/everburn-2
execute if entity @s[scores={Inferno1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/inferno-1
execute if entity @s[scores={Tremors1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/tremors-1
execute if entity @s[scores={Tremors2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/tremors-2
execute if entity @s[scores={Aftershock1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/aftershock-1
execute if entity @s[scores={Aftershock2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/aftershock-2
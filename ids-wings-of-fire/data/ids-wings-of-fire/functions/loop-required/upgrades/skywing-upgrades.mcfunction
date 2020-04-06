#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Activate Upgrades
scoreboard players enable @s Oxygenate1
scoreboard players enable @s Oxygenate2
scoreboard players enable @s Oxygenate3
scoreboard players enable @s Wildfire1
scoreboard players enable @s Wildfire2
scoreboard players enable @s Blaze1
scoreboard players enable @s GaleForce1
scoreboard players enable @s GaleForce2
scoreboard players enable @s Cyclone1
scoreboard players enable @s Cyclone2

execute if entity @s[scores={Oxygenate1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/oxygenate-1
execute if entity @s[scores={Oxygenate2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/oxygenate-2
execute if entity @s[scores={Oxygenate3=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/oxygenate-3
execute if entity @s[scores={Wildfire1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/wildfire-1
execute if entity @s[scores={Wildfire2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/wildfire-2
execute if entity @s[scores={Blaze1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/blaze-1
execute if entity @s[scores={GaleForce1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/gale-force-1
execute if entity @s[scores={GaleForce2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/gale-force-2
execute if entity @s[scores={Cyclone1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/cyclone-1
execute if entity @s[scores={Cyclone2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/cyclone-2
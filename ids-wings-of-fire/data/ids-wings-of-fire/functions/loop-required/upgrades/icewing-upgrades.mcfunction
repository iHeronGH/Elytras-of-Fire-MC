#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Activate Upgrades
scoreboard players enable @s ArcticCore1
scoreboard players enable @s ArcticCore2
scoreboard players enable @s ArcticCore3
scoreboard players enable @s Permafrost1
scoreboard players enable @s Permafrost2
scoreboard players enable @s Icefall1
scoreboard players enable @s FreezingPoint1
scoreboard players enable @s FreezingPoint2
scoreboard players enable @s Chill1
scoreboard players enable @s Chill2

execute if entity @s[scores={ArcticCore1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/perma/arctic-core-1
execute if entity @s[scores={ArcticCore2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/perma/arctic-core-2
execute if entity @s[scores={ArcticCore3=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/perma/arctic-core-3
execute if entity @s[scores={Permafrost1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/perma/permafrost-1
execute if entity @s[scores={Permafrost2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/perma/permafrost-2
execute if entity @s[scores={Icefall1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/perma/icefall-1
execute if entity @s[scores={FreezingPoint1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/perma/freezing-point-1
execute if entity @s[scores={FreezingPoint2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/perma/freezing-point-2
execute if entity @s[scores={Chill1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/perma/chill-1
execute if entity @s[scores={Chill2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/perma/chill-2
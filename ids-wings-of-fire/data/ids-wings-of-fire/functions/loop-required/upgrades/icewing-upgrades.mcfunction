#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Activate Upgrades
scoreboard players enable @p ArcticCore1
scoreboard players enable @p ArcticCore2
scoreboard players enable @p ArcticCore3
scoreboard players enable @p Permafrost1
scoreboard players enable @p Permafrost2
scoreboard players enable @p Icefall1
scoreboard players enable @p FreezingPoint1
scoreboard players enable @p FreezingPoint2
scoreboard players enable @p Chill1
scoreboard players enable @p Chill2

execute as @p if entity @s[scores={ArcticCore1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/arctic-core-1
execute as @p if entity @s[scores={ArcticCore2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/arctic-core-2
execute as @p if entity @s[scores={ArcticCore3=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/arctic-core-3
execute as @p if entity @s[scores={Permafrost1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/icewingsfrost-1
execute as @p if entity @s[scores={Permafrost2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/icewingsfrost-2
execute as @p if entity @s[scores={Icefall1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/icefall-1
execute as @p if entity @s[scores={FreezingPoint1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/freezing-point-1
execute as @p if entity @s[scores={FreezingPoint2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/freezing-point-2
execute as @p if entity @s[scores={Chill1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/chill-1
execute as @p if entity @s[scores={Chill2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/chill-2
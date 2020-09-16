#Activate Upgrades
scoreboard players enable @p Oxygenate1
scoreboard players enable @p Oxygenate2
scoreboard players enable @p Oxygenate3
scoreboard players enable @p Wildfire1
scoreboard players enable @p Wildfire2
scoreboard players enable @p Blaze1
scoreboard players enable @p GaleForce1
scoreboard players enable @p GaleForce2
scoreboard players enable @p Cyclone1
scoreboard players enable @p Cyclone2

execute as @p if entity @s[scores={Oxygenate1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/skywings/oxygenate-1
execute as @p if entity @s[scores={Oxygenate2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/skywings/oxygenate-2
execute as @p if entity @s[scores={Oxygenate3=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/skywings/oxygenate-3
execute as @p if entity @s[scores={Wildfire1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/skywings/wildfire-1
execute as @p if entity @s[scores={Wildfire2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/skywings/wildfire-2
execute as @p if entity @s[scores={Blaze1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/skywings/blaze-1
execute as @p if entity @s[scores={GaleForce1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/skywings/gale-force-1
execute as @p if entity @s[scores={GaleForce2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/skywings/gale-force-2
execute as @p if entity @s[scores={Cyclone1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/skywings/cyclone-1
execute as @p if entity @s[scores={Cyclone2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/skywings/cyclone-2
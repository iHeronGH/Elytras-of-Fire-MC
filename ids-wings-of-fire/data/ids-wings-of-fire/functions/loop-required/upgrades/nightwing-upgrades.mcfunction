#Activate Upgrades
scoreboard players enable @p Superheat1
scoreboard players enable @p Superheat2
scoreboard players enable @p Superheat3
scoreboard players enable @p EternalFlame1
scoreboard players enable @p EternalFlame2
scoreboard players enable @p Fission1
scoreboard players enable @p Corruption1
scoreboard players enable @p Corruption2
scoreboard players enable @p Blackout1
scoreboard players enable @p Blackout2

execute as @p if entity @s[scores={Superheat1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/nightwings/superheat-1
execute as @p if entity @s[scores={Superheat2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/nightwings/superheat-2
execute as @p if entity @s[scores={Superheat3=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/nightwings/superheat-3
execute as @p if entity @s[scores={EternalFlame1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/nightwings/eternal-flame-1
execute as @p if entity @s[scores={EternalFlame2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/nightwings/eternal-flame-2
execute as @p if entity @s[scores={Fission1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/nightwings/fission-1
execute as @p if entity @s[scores={Corruption1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/nightwings/corruption-1
execute as @p if entity @s[scores={Corruption2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/nightwings/corruption-2
execute as @p if entity @s[scores={Blackout1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/nightwings/blackout-1
execute as @p if entity @s[scores={Blackout2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/nightwings/blackout-2
#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Activate Upgrades
scoreboard players enable @p Scorch1
scoreboard players enable @p Scorch2
scoreboard players enable @p Scorch3
scoreboard players enable @p Dehydrate1
scoreboard players enable @p Dehydrate2
scoreboard players enable @p Desolation1
scoreboard players enable @p HighWinds1
scoreboard players enable @p HighWinds2
scoreboard players enable @p Drought1
scoreboard players enable @p Drought2

execute as @p if entity @s[scores={Scorch1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/sandwings/scorch-1
execute as @p if entity @s[scores={Scorch2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/sandwings/scorch-2
execute as @p if entity @s[scores={Scorch3=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/sandwings/scorch-3
execute as @p if entity @s[scores={Dehydrate1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/sandwings/dehydrate-1
execute as @p if entity @s[scores={Dehydrate2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/sandwings/dehydrate-2
execute as @p if entity @s[scores={Desolation1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/sandwings/desolation-1
execute as @p if entity @s[scores={HighWinds1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/sandwings/high-winds-1
execute as @p if entity @s[scores={HighWinds2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/sandwings/high-winds-2
execute as @p if entity @s[scores={Drought1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/sandwings/drought-1
execute as @p if entity @s[scores={Drought2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/sandwings/drought-2
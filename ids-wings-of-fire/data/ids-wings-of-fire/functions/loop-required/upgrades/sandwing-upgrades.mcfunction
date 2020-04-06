#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Activate Upgrades
scoreboard players enable @s Scorch1
scoreboard players enable @s Scorch2
scoreboard players enable @s Scorch3
scoreboard players enable @s Dehydrate1
scoreboard players enable @s Dehydrate2
scoreboard players enable @s Desolation1
scoreboard players enable @s HighWinds1
scoreboard players enable @s HighWinds2
scoreboard players enable @s Drought1
scoreboard players enable @s Drought2

execute if entity @s[scores={Scorch1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/scorch-1
execute if entity @s[scores={Scorch2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/scorch-2
execute if entity @s[scores={Scorch3=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/scorch-3
execute if entity @s[scores={Dehydrate1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/dehydrate-1
execute if entity @s[scores={Dehydrate2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/dehydrate-2
execute if entity @s[scores={Desolation1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/desolation-1
execute if entity @s[scores={HighWinds1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/high-winds-1
execute if entity @s[scores={HighWinds2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/high-winds-2
execute if entity @s[scores={Drought1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/drought-1
execute if entity @s[scores={Drought2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/drought-2
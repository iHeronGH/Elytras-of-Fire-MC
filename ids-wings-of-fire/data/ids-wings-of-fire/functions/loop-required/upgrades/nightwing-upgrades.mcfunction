#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Activate Upgrades
scoreboard players enable @s Superheat1
scoreboard players enable @s Superheat2
scoreboard players enable @s Superheat3
scoreboard players enable @s EternalFlame1
scoreboard players enable @s EternalFlame2
scoreboard players enable @s Fission1
scoreboard players enable @s Corruption1
scoreboard players enable @s Corruption2
scoreboard players enable @s Blackout1
scoreboard players enable @s Blackout2

execute if entity @s[scores={Superheat1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/superheat-1
execute if entity @s[scores={Superheat2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/superheat-2
execute if entity @s[scores={Superheat3=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/superheat-3
execute if entity @s[scores={EternalFlame1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/eternal-flame-1
execute if entity @s[scores={EternalFlame2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/eternal-flame-2
execute if entity @s[scores={Fission1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/fission-1
execute if entity @s[scores={Corruption1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/corruption-1
execute if entity @s[scores={Corruption2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/corruption-2
execute if entity @s[scores={Blackout1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/blackout-1
execute if entity @s[scores={Blackout2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/blackout-2
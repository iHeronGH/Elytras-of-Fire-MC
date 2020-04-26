#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Activate Upgrades
scoreboard players enable @s HighTide1
scoreboard players enable @s HighTide2
scoreboard players enable @s HighTide3
scoreboard players enable @s Waterlogged1
scoreboard players enable @s Waterlogged2
scoreboard players enable @s Torrent1
scoreboard players enable @s Streamline1
scoreboard players enable @s Streamline2
scoreboard players enable @s Amphibious1
scoreboard players enable @s Amphibious2

execute if entity @s[scores={HighTide1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/porous/high-tide-1
execute if entity @s[scores={HighTide2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/porous/high-tide-2
execute if entity @s[scores={HighTide3=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/porous/high-tide-3
execute if entity @s[scores={Waterlogged1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/porous/waterlogged-1
execute if entity @s[scores={Waterlogged2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/porous/waterlogged-2
execute if entity @s[scores={Torrent1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/porous/torrent-1
execute if entity @s[scores={Streamline1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/porous/streamline-1
execute if entity @s[scores={Streamline2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/porous/streamline-2
execute if entity @s[scores={Amphibious1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/porous/amphibious-1
execute if entity @s[scores={Amphibious2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/porous/amphibious-2
#Activate Upgrades
scoreboard players enable @p HighTide1
scoreboard players enable @p HighTide2
scoreboard players enable @p HighTide3
scoreboard players enable @p Waterlogged1
scoreboard players enable @p Waterlogged2
scoreboard players enable @p Torrent1
scoreboard players enable @p Streamline1
scoreboard players enable @p Streamline2
scoreboard players enable @p Amphibious1
scoreboard players enable @p Amphibious2

execute as @p if entity @s[scores={HighTide1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/high-tide-1
execute as @p if entity @s[scores={HighTide2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/high-tide-2
execute as @p if entity @s[scores={HighTide3=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/high-tide-3
execute as @p if entity @s[scores={Waterlogged1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/waterlogged-1
execute as @p if entity @s[scores={Waterlogged2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/waterlogged-2
execute as @p if entity @s[scores={Torrent1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/torrent-1
execute as @p if entity @s[scores={Streamline1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/streamline-1
execute as @p if entity @s[scores={Streamline2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/streamline-2
execute as @p if entity @s[scores={Amphibious1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/amphibious-1
execute as @p if entity @s[scores={Amphibious2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/amphibious-2
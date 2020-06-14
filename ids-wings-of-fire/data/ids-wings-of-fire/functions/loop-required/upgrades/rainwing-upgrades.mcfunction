#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Activate Upgrades
scoreboard players enable @s Reaction1
scoreboard players enable @s Reaction2
scoreboard players enable @s Reaction3
scoreboard players enable @s Noxious1
scoreboard players enable @s Noxious2
scoreboard players enable @s Potency1
scoreboard players enable @s Photosynthesis1
scoreboard players enable @s Photosynthesis2
scoreboard players enable @s NaturesWrath1
scoreboard players enable @s NaturesWrath2

execute if entity @s[scores={Reaction1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/potent/reaction-1
execute if entity @s[scores={Reaction2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/potent/reaction-2
execute if entity @s[scores={Reaction3=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/potent/reaction-3
execute if entity @s[scores={Noxious1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/potent/noxious-1
execute if entity @s[scores={Noxious2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/potent/noxious-2
execute if entity @s[scores={Potency1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/potent/potency-1
execute if entity @s[scores={Photosynthesis1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/potent/photosynthesis-1
execute if entity @s[scores={Photosynthesis2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/potent/photosynthesis-2
execute if entity @s[scores={NaturesWrath1=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/potent/natures-wrath-1
execute if entity @s[scores={NaturesWrath2=1..}] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/potent/natures-wrath-2
#Activate Upgrades
scoreboard players enable @p Reaction1
scoreboard players enable @p Reaction2
scoreboard players enable @p Reaction3
scoreboard players enable @p Noxious1
scoreboard players enable @p Noxious2
scoreboard players enable @p Potency1
scoreboard players enable @p Photosynthesis1
scoreboard players enable @p Photosynthesis2
scoreboard players enable @p NaturesWrath1
scoreboard players enable @p NaturesWrath2

execute as @p if entity @s[scores={Reaction1=1..}] run function eof:loop-required/generate-tags/check-upgrades/rainwings/reaction-1
execute as @p if entity @s[scores={Reaction2=1..}] run function eof:loop-required/generate-tags/check-upgrades/rainwings/reaction-2
execute as @p if entity @s[scores={Reaction3=1..}] run function eof:loop-required/generate-tags/check-upgrades/rainwings/reaction-3
execute as @p if entity @s[scores={Noxious1=1..}] run function eof:loop-required/generate-tags/check-upgrades/rainwings/noxious-1
execute as @p if entity @s[scores={Noxious2=1..}] run function eof:loop-required/generate-tags/check-upgrades/rainwings/noxious-2
execute as @p if entity @s[scores={Potency1=1..}] run function eof:loop-required/generate-tags/check-upgrades/rainwings/potency-1
execute as @p if entity @s[scores={Photosynthesis1=1..}] run function eof:loop-required/generate-tags/check-upgrades/rainwings/photosynthesis-1
execute as @p if entity @s[scores={Photosynthesis2=1..}] run function eof:loop-required/generate-tags/check-upgrades/rainwings/photosynthesis-2
execute as @p if entity @s[scores={NaturesWrath1=1..}] run function eof:loop-required/generate-tags/check-upgrades/rainwings/natures-wrath-1
execute as @p if entity @s[scores={NaturesWrath2=1..}] run function eof:loop-required/generate-tags/check-upgrades/rainwings/natures-wrath-2
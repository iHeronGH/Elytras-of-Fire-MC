#Grants Buffs

	#No Upgrades
execute if entity @s[tag=!Furnace1,tag=!Furnace2,tag=!Furnace3,tag=!Everburn1,tag=!Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/flame-breath

	#Trio
execute if entity @s[tag=Furnace1,tag=Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/trio/cd1lf1ai1
execute if entity @s[tag=Furnace1,tag=Everburn2,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/trio/cd1lf2ai1
execute if entity @s[tag=Furnace2,tag=Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/trio/cd2lf1ai1
execute if entity @s[tag=Furnace2,tag=Everburn2,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/trio/cd2lf2ai1
execute if entity @s[tag=Furnace3,tag=Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/trio/cd3lf1ai1
execute if entity @s[tag=Furnace3,tag=Everburn2,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/trio/cd3lf2ai1

	#Duo
execute if entity @s[tag=Furnace1,tag=Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd1lf1
execute if entity @s[tag=Furnace1,tag=Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd1lf2
execute if entity @s[tag=Furnace2,tag=Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd2lf1
execute if entity @s[tag=Furnace2,tag=Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd2lf2
execute if entity @s[tag=Furnace3,tag=Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd3lf1
execute if entity @s[tag=Furnace3,tag=Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd3lf2
execute if entity @s[tag=Furnace1,tag=!Everburn1,tag=!Everburn2,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd1ai1
execute if entity @s[tag=Furnace2,tag=!Everburn1,tag=!Everburn2,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd2ai1
execute if entity @s[tag=Furnace3,tag=!Everburn1,tag=!Everburn2,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd3ai1
execute if entity @s[tag=!Furnace1,tag=!Furnace2,tag=!Furnace3,tag=Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/lf1ai1
execute if entity @s[tag=!Furnace1,tag=!Furnace2,tag=!Furnace3,tag=Everburn2,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/lf2ai1

	#Mono
execute if entity @s[tag=Furnace1,tag=!Everburn1,tag=!Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/mono/cd1
execute if entity @s[tag=Furnace2,tag=!Everburn1,tag=!Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/mono/cd2
execute if entity @s[tag=Furnace3,tag=!Everburn1,tag=!Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/mono/cd3
execute if entity @s[tag=!Furnace1,tag=!Furnace2,tag=!Furnace3,tag=Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/mono/lf1
execute if entity @s[tag=!Furnace1,tag=!Furnace2,tag=!Furnace3,tag=Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/mono/lf2
execute if entity @s[tag=!Furnace1,tag=!Furnace2,tag=!Furnace3,tag=!Everburn1,tag=!Everburn2,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/mono/ai1

#Enter Cooldown
tag @s[tag=!CoolDown1] add CoolDown1
function ids-wings-of-fire:launch-add-ons/announce-cooldown-one
tag @s[tag=!CoolDownActive1] add CoolDownActive1
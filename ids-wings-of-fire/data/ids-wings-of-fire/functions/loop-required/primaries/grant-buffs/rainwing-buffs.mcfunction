#Grants Buffs

	#No Upgrades
execute if entity @s[tag=!Reaction1,tag=!Reaction2,tag=!Reaction3,tag=!Noxious1,tag=!Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/venom-shot

	#Trio
execute if entity @s[tag=Reaction1,tag=Noxious1,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/trio/cd1le1ri1
execute if entity @s[tag=Reaction1,tag=Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/trio/cd1le2ri1
execute if entity @s[tag=Reaction2,tag=Noxious1,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/trio/cd2le1ri1
execute if entity @s[tag=Reaction2,tag=Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/trio/cd2le2ri1
execute if entity @s[tag=Reaction3,tag=Noxious1,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/trio/cd3le1ri1
execute if entity @s[tag=Reaction3,tag=Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/trio/cd3le2ri1

	#Duo
execute if entity @s[tag=Reaction1,tag=Noxious1,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/duo/cd1le1
execute if entity @s[tag=Reaction1,tag=Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/duo/cd1le2
execute if entity @s[tag=Reaction2,tag=Noxious1,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/duo/cd2le1
execute if entity @s[tag=Reaction2,tag=Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/duo/cd2le2
execute if entity @s[tag=Reaction3,tag=Noxious1,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/duo/cd3le1
execute if entity @s[tag=Reaction3,tag=Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/duo/cd3le2
execute if entity @s[tag=Reaction1,tag=!Noxious1,tag=!Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/duo/cd1ri1
execute if entity @s[tag=Reaction2,tag=!Noxious1,tag=!Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/duo/cd2ri1
execute if entity @s[tag=Reaction3,tag=!Noxious1,tag=!Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/duo/cd3ri1
execute if entity @s[tag=!Reaction1,tag=!Reaction2,tag=!Reaction3,tag=Noxious1,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/duo/le1ri1
execute if entity @s[tag=!Reaction1,tag=!Reaction2,tag=!Reaction3,tag=Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/duo/le2ri1

	#Mono
execute if entity @s[tag=Reaction1,tag=!Noxious1,tag=!Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/mono/cd1
execute if entity @s[tag=Reaction2,tag=!Noxious1,tag=!Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/mono/cd2
execute if entity @s[tag=Reaction3,tag=!Noxious1,tag=!Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/mono/cd3
execute if entity @s[tag=!Reaction1,tag=!Reaction2,tag=!Reaction3,tag=Noxious1,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/mono/le1
execute if entity @s[tag=!Reaction1,tag=!Reaction2,tag=!Reaction3,tag=Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/mono/le2
execute if entity @s[tag=!Reaction1,tag=!Reaction2,tag=!Reaction3,tag=!Noxious1,tag=!Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/mono/ri1

#Enter Cooldown
tag @s[tag=!CoolDown1] add CoolDown1
function ids-wings-of-fire:launch-add-ons/announce-cooldown-one
tag @s[tag=!CoolDownActive1] add CoolDownActive1
#Grants Buffs

	#No Upgrades
execute if entity @s[tag=!Scorch1,tag=!Scorch2,tag=!Scorch3,tag=!Dehydrate1,tag=!Dehydrate2,tag=!Desolation1] run function ids-wings-of-fire:loop-required/primaries/flame-breath

	#Trio
execute if entity @s[tag=Scorch1,tag=Dehydrate1,tag=Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/trio/cd1lf1ri1
execute if entity @s[tag=Scorch1,tag=Dehydrate2,tag=Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/trio/cd1lf2ri1
execute if entity @s[tag=Scorch2,tag=Dehydrate1,tag=Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/trio/cd2lf1ri1
execute if entity @s[tag=Scorch2,tag=Dehydrate2,tag=Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/trio/cd2lf2ri1
execute if entity @s[tag=Scorch3,tag=Dehydrate1,tag=Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/trio/cd3lf1ri1
execute if entity @s[tag=Scorch3,tag=Dehydrate2,tag=Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/trio/cd3lf2ri1

	#Duo
execute if entity @s[tag=Scorch1,tag=Dehydrate1,tag=!Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/duo/cd1lf1
execute if entity @s[tag=Scorch1,tag=Dehydrate2,tag=!Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/duo/cd1lf2
execute if entity @s[tag=Scorch2,tag=Dehydrate1,tag=!Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/duo/cd2lf1
execute if entity @s[tag=Scorch2,tag=Dehydrate2,tag=!Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/duo/cd2lf2
execute if entity @s[tag=Scorch3,tag=Dehydrate1,tag=!Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/duo/cd3lf1
execute if entity @s[tag=Scorch3,tag=Dehydrate2,tag=!Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/duo/cd3lf2
execute if entity @s[tag=Scorch1,tag=!Dehydrate1,tag=!Dehydrate2,tag=Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/duo/cd1ri1
execute if entity @s[tag=Scorch2,tag=!Dehydrate1,tag=!Dehydrate2,tag=Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/duo/cd2ri1
execute if entity @s[tag=Scorch3,tag=!Dehydrate1,tag=!Dehydrate2,tag=Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/duo/cd3ri1
execute if entity @s[tag=!Scorch1,tag=!Scorch2,tag=!Scorch3,tag=Dehydrate1,tag=Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/duo/lf1ri1
execute if entity @s[tag=!Scorch1,tag=!Scorch2,tag=!Scorch3,tag=Dehydrate2,tag=Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/duo/lf2ri1

	#Mono
execute if entity @s[tag=Scorch1,tag=!Dehydrate1,tag=!Dehydrate2,tag=!Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/mono/cd1
execute if entity @s[tag=Scorch2,tag=!Dehydrate1,tag=!Dehydrate2,tag=!Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/mono/cd2
execute if entity @s[tag=Scorch3,tag=!Dehydrate1,tag=!Dehydrate2,tag=!Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/mono/cd3
execute if entity @s[tag=!Scorch1,tag=!Scorch2,tag=!Scorch3,tag=Dehydrate1,tag=!Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/mono/lf1
execute if entity @s[tag=!Scorch1,tag=!Scorch2,tag=!Scorch3,tag=Dehydrate2,tag=!Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/mono/lf2
execute if entity @s[tag=!Scorch1,tag=!Scorch2,tag=!Scorch3,tag=!Dehydrate1,tag=!Dehydrate2,tag=Desolation1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/sandwings/mono/ri1

#Enter Cooldown
tag @s[tag=!CoolDown1] add CoolDown1
function ids-wings-of-fire:launch-add-ons/announce-cooldown-one
tag @s[tag=!CoolDownActive1] add CoolDownActive1
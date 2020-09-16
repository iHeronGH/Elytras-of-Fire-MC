#Grants Buffs

	#No Upgrades
execute if entity @s[tag=!Tremors1,tag=!Tremors2,tag=!Aftershock1,tag=!Aftershock2] run function ids-wings-of-fire:loop-required/secondaries/terrashock

	#Duo
execute if entity @s[tag=Tremors1,tag=Aftershock1] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/mudwings/duo/cd1du1
execute if entity @s[tag=Tremors1,tag=Aftershock2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/mudwings/duo/cd1du2
execute if entity @s[tag=Tremors2,tag=Aftershock1] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/mudwings/duo/cd2du1
execute if entity @s[tag=Tremors2,tag=Aftershock2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/mudwings/duo/cd2du2

	#Mono
execute if entity @s[tag=Tremors1,tag=!Aftershock1,tag=!Aftershock2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/mudwings/mono/cd1
execute if entity @s[tag=Tremors2,tag=!Aftershock1,tag=!Aftershock2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/mudwings/mono/cd2
execute if entity @s[tag=!Tremors1,tag=!Tremors2,tag=Aftershock1] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/mudwings/mono/du1
execute if entity @s[tag=!Tremors1,tag=!Tremors2,tag=Aftershock2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/mudwings/mono/du2

#Enter Cooldown
tag @s add CoolDown2
execute as @s[tag=!CoolDownActive2] run function ids-wings-of-fire:launch-add-ons/announce-cooldown-two
tag @s add CoolDownActive2
#Grants Buffs

	#No Upgrades
execute if entity @s[tag=!FreezingPoint1,tag=!FreezingPoint2,tag=!Chill1,tag=!Chill2] run function eof:loop-required/secondaries/serrated-strike

	#Duo
execute if entity @s[tag=FreezingPoint1,tag=Chill1] run function eof:loop-required/secondaries/upgraded-abilities/icewings/duo/cd1du1
execute if entity @s[tag=FreezingPoint1,tag=Chill2] run function eof:loop-required/secondaries/upgraded-abilities/icewings/duo/cd1du2
execute if entity @s[tag=FreezingPoint2,tag=Chill1] run function eof:loop-required/secondaries/upgraded-abilities/icewings/duo/cd2du1
execute if entity @s[tag=FreezingPoint2,tag=Chill2] run function eof:loop-required/secondaries/upgraded-abilities/icewings/duo/cd2du2

	#Mono
execute if entity @s[tag=FreezingPoint1,tag=!Chill1,tag=!Chill2] run function eof:loop-required/secondaries/upgraded-abilities/icewings/mono/cd1
execute if entity @s[tag=FreezingPoint2,tag=!Chill1,tag=!Chill2] run function eof:loop-required/secondaries/upgraded-abilities/icewings/mono/cd2
execute if entity @s[tag=!FreezingPoint1,tag=!FreezingPoint2,tag=Chill1] run function eof:loop-required/secondaries/upgraded-abilities/icewings/mono/du1
execute if entity @s[tag=!FreezingPoint1,tag=!FreezingPoint2,tag=Chill2] run function eof:loop-required/secondaries/upgraded-abilities/icewings/mono/du2

#Enter Cooldown
tag @s add CoolDown2
execute as @s[tag=!CoolDownActive2] run function eof:launch-add-ons/announce-cooldown-two
tag @s add CoolDownActive2
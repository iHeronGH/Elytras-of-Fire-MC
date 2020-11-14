#Grants Buffs

	#No Upgrades
execute if entity @s[tag=!Corruption1,tag=!Corruption2,tag=!Blackout1,tag=!Blackout2] run function eof:loop-required/secondaries/shade-shackle

	#Duo
execute if entity @s[tag=Corruption1,tag=Blackout1] run function eof:loop-required/secondaries/upgraded-abilities/nightwings/duo/ep1ra1
execute if entity @s[tag=Corruption1,tag=Blackout2] run function eof:loop-required/secondaries/upgraded-abilities/nightwings/duo/ep1ra2
execute if entity @s[tag=Corruption2,tag=Blackout1] run function eof:loop-required/secondaries/upgraded-abilities/nightwings/duo/ep2ra1
execute if entity @s[tag=Corruption2,tag=Blackout2] run function eof:loop-required/secondaries/upgraded-abilities/nightwings/duo/ep2ra2

	#Mono
execute if entity @s[tag=Corruption1,tag=!Blackout1,tag=!Blackout2] run function eof:loop-required/secondaries/upgraded-abilities/nightwings/mono/ep1
execute if entity @s[tag=Corruption2,tag=!Blackout1,tag=!Blackout2] run function eof:loop-required/secondaries/upgraded-abilities/nightwings/mono/ep2
execute if entity @s[tag=!Corruption1,tag=!Corruption2,tag=Blackout1] run function eof:loop-required/secondaries/upgraded-abilities/nightwings/mono/ra1
execute if entity @s[tag=!Corruption1,tag=!Corruption2,tag=Blackout2] run function eof:loop-required/secondaries/upgraded-abilities/nightwings/mono/ra2
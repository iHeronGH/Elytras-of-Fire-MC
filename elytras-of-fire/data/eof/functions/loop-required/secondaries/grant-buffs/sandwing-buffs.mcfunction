#Grants Buffs

	#No Upgrades
execute if entity @s[tag=!HighWinds1,tag=!HighWinds2,tag=!Drought1,tag=!Drought2] run function eof:loop-required/secondaries/desert-storm

	#Duo
		#HighWinds 1, 2
		#Drought 1, 2
execute if entity @s[tag=HighWinds1,tag=Drought1] run function eof:loop-required/secondaries/upgraded-abilities/sandwings/duo/cd1du1
execute if entity @s[tag=HighWinds1,tag=Drought2] run function eof:loop-required/secondaries/upgraded-abilities/sandwings/duo/cd1du2
execute if entity @s[tag=HighWinds2,tag=Drought1] run function eof:loop-required/secondaries/upgraded-abilities/sandwings/duo/cd2du1
execute if entity @s[tag=HighWinds2,tag=Drought2] run function eof:loop-required/secondaries/upgraded-abilities/sandwings/duo/cd2du2

	#Mono
		#HighWinds 1, 2, 3
execute if entity @s[tag=HighWinds1,tag=!Drought1,tag=!Drought2] run function eof:loop-required/secondaries/upgraded-abilities/sandwings/mono/cd1
execute if entity @s[tag=HighWinds2,tag=!Drought1,tag=!Drought2] run function eof:loop-required/secondaries/upgraded-abilities/sandwings/mono/cd2
		#Drought 1, 2
execute if entity @s[tag=!HighWinds1,tag=!HighWinds2,tag=Drought1] run function eof:loop-required/secondaries/upgraded-abilities/sandwings/mono/du1
execute if entity @s[tag=!HighWinds1,tag=!HighWinds2,tag=Drought2] run function eof:loop-required/secondaries/upgraded-abilities/sandwings/mono/du2
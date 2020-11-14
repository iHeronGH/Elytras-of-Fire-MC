#Grants Buffs

	#No Upgrades
execute if entity @s[tag=!Streamline1,tag=!Streamline2,tag=!Amphibious1,tag=!Amphibious2] run function eof:loop-required/secondaries/oceans-blessing

	#Duo
		#Streamline 1, 2
		#Amphibious 1, 2
execute if entity @s[tag=Streamline1,tag=Amphibious1] run function eof:loop-required/secondaries/upgraded-abilities/seawings/duo/ep1du1
execute if entity @s[tag=Streamline1,tag=Amphibious2] run function eof:loop-required/secondaries/upgraded-abilities/seawings/duo/ep1du2
execute if entity @s[tag=Streamline2,tag=Amphibious1] run function eof:loop-required/secondaries/upgraded-abilities/seawings/duo/ep2du1
execute if entity @s[tag=Streamline2,tag=Amphibious2] run function eof:loop-required/secondaries/upgraded-abilities/seawings/duo/ep2du2

	#Mono
		#Streamline 1, 2, 3
execute if entity @s[tag=Streamline1,tag=!Amphibious1,tag=!Amphibious2] run function eof:loop-required/secondaries/upgraded-abilities/seawings/mono/ep1
execute if entity @s[tag=Streamline2,tag=!Amphibious1,tag=!Amphibious2] run function eof:loop-required/secondaries/upgraded-abilities/seawings/mono/ep2
		#Amphibious 1, 2
execute if entity @s[tag=!Streamline1,tag=!Streamline2,tag=Amphibious1] run function eof:loop-required/secondaries/upgraded-abilities/seawings/mono/du1
execute if entity @s[tag=!Streamline1,tag=!Streamline2,tag=Amphibious2] run function eof:loop-required/secondaries/upgraded-abilities/seawings/mono/du2
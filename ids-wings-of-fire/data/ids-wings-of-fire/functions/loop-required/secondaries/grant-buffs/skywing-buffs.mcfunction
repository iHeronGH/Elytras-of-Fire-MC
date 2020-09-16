#Grants Buffs

	#No Upgrades
execute if entity @s[tag=!GaleForce1,tag=!GaleForce2,tag=!Cyclone1,tag=!Cyclone2] run function ids-wings-of-fire:loop-required/secondaries/sky-surge

	#Duo
		#GaleForce 1, 2
		#Cyclone 1, 2
execute if entity @s[tag=GaleForce1,tag=Cyclone1] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/skywings/duo/cd1du1
execute if entity @s[tag=GaleForce1,tag=Cyclone2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/skywings/duo/cd1du2
execute if entity @s[tag=GaleForce2,tag=Cyclone1] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/skywings/duo/cd2du1
execute if entity @s[tag=GaleForce2,tag=Cyclone2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/skywings/duo/cd2du2

	#Mono
		#GaleForce 1, 2, 3
execute if entity @s[tag=GaleForce1,tag=!Cyclone1,tag=!Cyclone2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/skywings/mono/cd1
execute if entity @s[tag=GaleForce2,tag=!Cyclone1,tag=!Cyclone2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/skywings/mono/cd2
		#Cyclone 1, 2
execute if entity @s[tag=!GaleForce1,tag=!GaleForce2,tag=Cyclone1] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/skywings/mono/du1
execute if entity @s[tag=!GaleForce1,tag=!GaleForce2,tag=Cyclone2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/skywings/mono/du2
#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Grants Buffs

	#No Upgrades
execute if entity @s[tag=!Corruption1,tag=!Corruption2,tag=!Blackout1,tag=!Blackout2] run function ids-wings-of-fire:loop-required/secondaries/shade-shackle

	#Duo
		#Corruption 1, 2
		#Blackout 1, 2
execute if entity @s[tag=Corruption1,tag=Blackout1,tag=!Blackout2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/nightwings/duo/ep1ra1
execute if entity @s[tag=Corruption1,tag=!Blackout1,tag=Blackout2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/nightwings/duo/ep1ra2
execute if entity @s[tag=Corruption2,tag=Blackout1,tag=!Blackout2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/nightwings/duo/ep2ra1
execute if entity @s[tag=Corruption2,tag=!Blackout1,tag=Blackout2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/nightwings/duo/ep2ra2

	#Mono
		#Corruption 1, 2, 3
execute if entity @s[tag=Corruption1,tag=!Blackout1,tag=!Blackout2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/nightwings/mono/ep1
execute if entity @s[tag=Corruption2,tag=!Blackout1,tag=!Blackout2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/nightwings/mono/ep2
		#Blackout 1, 2
execute if entity @s[tag=!Corruption1,tag=!Corruption2,tag=Blackout1] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/nightwings/mono/ra1
execute if entity @s[tag=!Corruption1,tag=!Corruption2,tag=Blackout2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/nightwings/mono/ra2
#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Grants Buffs

	#No Upgrades
execute if entity @s[tag=!Tremors1,tag=!Tremors2,tag=!Aftershock1,tag=!Aftershock2] run function ids-wings-of-fire:loop-required/secondaries/terrashock

	#Duo
		#Tremors 1, 2
		#Aftershock 1, 2
execute if entity @s[tag=Tremors1,tag=Aftershock1] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/mudwings/duo/cd1du1
execute if entity @s[tag=Tremors1,tag=Aftershock2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/mudwings/duo/cd1du2
execute if entity @s[tag=Tremors2,tag=Aftershock1] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/mudwings/duo/cd2du1
execute if entity @s[tag=Tremors2,tag=Aftershock2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/mudwings/duo/cd2du2

	#Mono
		#Tremors 1, 2, 3
execute if entity @s[tag=Tremors1,tag=!Aftershock1,tag=!Aftershock2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/mudwings/mono/cd1
execute if entity @s[tag=Tremors2,tag=!Aftershock1,tag=!Aftershock2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/mudwings/mono/cd2
		#Aftershock 1, 2
execute if entity @s[tag=!Tremors1,tag=!Tremors2,tag=Aftershock1] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/mudwings/mono/du1
execute if entity @s[tag=!Tremors1,tag=!Tremors2,tag=Aftershock2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/mudwings/mono/du2
#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Check Upgrades

	#No Upgrades
execute if entity @s[tag=!Tremors1,tag=!Tremors2,tag=!Aftershock1,tag=!Aftershock2] run function ids-wings-of-fire:loop-required/generate-hotbars/mudwings/tremor-tremble

	#Mono
		#Tremors 1, 2
execute if entity @s[tag=Tremors1,tag=!Aftershock1,tag=!Aftershock2] run function ids-wings-of-fire:loop-required/generate-hotbars/mudwings/upgraded-abilities/terrashock/mono/cooldown1
execute if entity @s[tag=Tremors2,tag=!Aftershock1,tag=!Aftershock2] run function ids-wings-of-fire:loop-required/generate-hotbars/mudwings/upgraded-abilities/terrashock/mono/cooldown2
		#Aftershock 1, 2
execute if entity @s[tag=!Tremors1,tag=!Tremors2,tag=Aftershock1] run function ids-wings-of-fire:loop-required/generate-hotbars/mudwings/upgraded-abilities/terrashock/mono/duration1
execute if entity @s[tag=!Tremors1,tag=!Tremors2,tag=Aftershock2] run function ids-wings-of-fire:loop-required/generate-hotbars/mudwings/upgraded-abilities/terrashock/mono/duration2

	#Duo
		#Tremors 1, 2
		#Aftershock 1, 2
execute if entity @s[tag=Tremors1,tag=Aftershock1] run function ids-wings-of-fire:loop-required/generate-hotbars/mudwings/upgraded-abilities/terrashock/duo/cooldown1-duration1
execute if entity @s[tag=Tremors1,tag=Aftershock2] run function ids-wings-of-fire:loop-required/generate-hotbars/mudwings/upgraded-abilities/terrashock/duo/cooldown1-duration2
execute if entity @s[tag=Tremors2,tag=Aftershock1] run function ids-wings-of-fire:loop-required/generate-hotbars/mudwings/upgraded-abilities/terrashock/duo/cooldown2-duration1
execute if entity @s[tag=Tremors2,tag=Aftershock2] run function ids-wings-of-fire:loop-required/generate-hotbars/mudwings/upgraded-abilities/terrashock/duo/cooldown2-duration2
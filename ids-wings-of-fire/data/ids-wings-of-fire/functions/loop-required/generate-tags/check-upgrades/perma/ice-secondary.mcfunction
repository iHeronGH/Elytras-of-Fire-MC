#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Check Upgrades

	#No Upgrades
execute if entity @s[tag=!FreezingPoint1,tag=!FreezingPoint2,tag=!Chill1,tag=!Chill2] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/honed-slice

	#Mono
		#FreezingPoint 1, 2
execute if entity @s[tag=FreezingPoint1,tag=!Chill1,tag=!Chill2] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/serrated-strike/mono/cooldown1
execute if entity @s[tag=FreezingPoint2,tag=!Chill1,tag=!Chill2] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/serrated-strike/mono/cooldown2
		#Chill 1, 2
execute if entity @s[tag=!FreezingPoint1,tag=!FreezingPoint2,tag=Chill1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/serrated-strike/mono/duration1
execute if entity @s[tag=!FreezingPoint1,tag=!FreezingPoint2,tag=Chill2] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/serrated-strike/mono/duration2

	#Duo
		#FreezingPoint 1, 2
		#Chill 1, 2
execute if entity @s[tag=FreezingPoint1,tag=Chill1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/serrated-strike/duo/cooldown1-duration1
execute if entity @s[tag=FreezingPoint1,tag=Chill2] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/serrated-strike/duo/cooldown1-duration2
execute if entity @s[tag=FreezingPoint2,tag=Chill1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/serrated-strike/duo/cooldown2-duration1
execute if entity @s[tag=FreezingPoint2,tag=Chill2] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/serrated-strike/duo/cooldown2-duration2
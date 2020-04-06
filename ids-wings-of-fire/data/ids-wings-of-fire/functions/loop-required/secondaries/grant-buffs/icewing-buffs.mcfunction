#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Grants Buffs

	#No Upgrades
execute if entity @s[tag=!FreezingPoint1,tag=!FreezingPoint2,tag=!Chill1,tag=!Chill2] run function ids-wings-of-fire:loop-required/secondaries/serrated-strike

	#Duo
		#FreezingPoint 1, 2
		#Chill 1, 2
execute if entity @s[tag=FreezingPoint1,tag=Chill1] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/icewings/duo/cd1du1
execute if entity @s[tag=FreezingPoint1,tag=Chill2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/icewings/duo/cd1du2
execute if entity @s[tag=FreezingPoint2,tag=Chill1] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/icewings/duo/cd2du1
execute if entity @s[tag=FreezingPoint2,tag=Chill2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/icewings/duo/cd2du2

	#Mono
		#FreezingPoint 1, 2, 3
execute if entity @s[tag=FreezingPoint1,tag=!Chill1,tag=!Chill2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/icewings/mono/cd1
execute if entity @s[tag=FreezingPoint2,tag=!Chill1,tag=!Chill2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/icewings/mono/cd2
		#Chill 1, 2
execute if entity @s[tag=!FreezingPoint1,tag=!FreezingPoint2,tag=Chill1] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/icewings/mono/du1
execute if entity @s[tag=!FreezingPoint1,tag=!FreezingPoint2,tag=Chill2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/icewings/mono/du2
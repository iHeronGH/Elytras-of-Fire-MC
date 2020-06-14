#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Check Upgrades

	#No Upgrades
execute if entity @s[tag=!GaleForce1,tag=!GaleForce2,tag=!Cyclone1,tag=!Cyclone2] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/second-wind

	#Mono
		#GaleForce 1, 2
execute if entity @s[tag=GaleForce1,tag=!Cyclone1,tag=!Cyclone2] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/sky-surge/mono/cooldown1
execute if entity @s[tag=GaleForce2,tag=!Cyclone1,tag=!Cyclone2] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/sky-surge/mono/cooldown2
		#Cyclone 1, 2
execute if entity @s[tag=!GaleForce1,tag=!GaleForce2,tag=Cyclone1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/sky-surge/mono/duration1
execute if entity @s[tag=!GaleForce1,tag=!GaleForce2,tag=Cyclone2] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/sky-surge/mono/duration2

	#Duo
		#GaleForce 1, 2
		#Cyclone 1, 2
execute if entity @s[tag=GaleForce1,tag=Cyclone1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/sky-surge/duo/cooldown1-duration1
execute if entity @s[tag=GaleForce1,tag=Cyclone2] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/sky-surge/duo/cooldown1-duration2
execute if entity @s[tag=GaleForce2,tag=Cyclone1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/sky-surge/duo/cooldown2-duration1
execute if entity @s[tag=GaleForce2,tag=Cyclone2] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/sky-surge/duo/cooldown2-duration2
#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Check Upgrades

	#No Upgrades
execute if entity @s[tag=!Streamline1,tag=!Streamline2,tag=!Amphibious1,tag=!Amphibious2] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/ocean-bless

	#Mono
		#Streamline 1, 2
execute if entity @s[tag=Streamline1,tag=!Amphibious1,tag=!Amphibious2] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/oceans-blessing/mono/effectpower1
execute if entity @s[tag=Streamline2,tag=!Amphibious1,tag=!Amphibious2] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/oceans-blessing/mono/effectpower2
		#Amphibious 1, 2
execute if entity @s[tag=!Streamline1,tag=!Streamline2,tag=Amphibious1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/oceans-blessing/mono/duration1
execute if entity @s[tag=!Streamline1,tag=!Streamline2,tag=Amphibious2] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/oceans-blessing/mono/duration2

	#Duo
		#Streamline 1, 2
		#Amphibious 1, 2
execute if entity @s[tag=Streamline1,tag=Amphibious1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/oceans-blessing/duo/effectpower1-duration1
execute if entity @s[tag=Streamline1,tag=Amphibious2] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/oceans-blessing/duo/effectpower1-duration2
execute if entity @s[tag=Streamline2,tag=Amphibious1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/oceans-blessing/duo/effectpower2-duration1
execute if entity @s[tag=Streamline2,tag=Amphibious2] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/oceans-blessing/duo/effectpower2-duration2
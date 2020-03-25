#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Check Upgrades

	#No Upgrades
execute if entity @s[tag=!HighWinds1,tag=!HighWinds2,tag=!Drought1,tag=!Drought2] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/scorched-sands

	#Mono
		#HighWinds 1, 2
execute if entity @s[tag=HighWinds1,tag=!Drought1,tag=!Drought2] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/desert-storm/mono/cooldown1
execute if entity @s[tag=HighWinds2,tag=!Drought1,tag=!Drought2] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/desert-storm/mono/cooldown2
		#Drought 1, 2
execute if entity @s[tag=!HighWinds1,tag=!HighWinds2,tag=Drought1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/desert-storm/mono/duration1
execute if entity @s[tag=!HighWinds1,tag=!HighWinds2,tag=Drought2] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/desert-storm/mono/duration2

	#Duo
		#HighWinds 1, 2
		#Drought 1, 2
execute if entity @s[tag=HighWinds1,tag=Drought1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/desert-storm/duo/cooldown1-duration1
execute if entity @s[tag=HighWinds1,tag=Drought2] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/desert-storm/duo/cooldown1-duration2
execute if entity @s[tag=HighWinds2,tag=Drought1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/desert-storm/duo/cooldown2-duration1
execute if entity @s[tag=HighWinds2,tag=Drought2] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/desert-storm/duo/cooldown2-duration2
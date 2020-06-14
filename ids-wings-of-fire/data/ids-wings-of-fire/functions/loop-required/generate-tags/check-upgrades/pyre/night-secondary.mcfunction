#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Check Upgrades

	#No Upgrades
execute if entity @s[tag=!Corruption1,tag=!Corruption2,tag=!Blackout1,tag=!Blackout2] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/dark-aura

	#Mono
		#Corruption 1, 2
execute if entity @s[tag=Corruption1,tag=!Blackout1,tag=!Blackout2] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/shade-shackle/mono/effectpower1
execute if entity @s[tag=Corruption2,tag=!Blackout1,tag=!Blackout2] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/shade-shackle/mono/effectpower2
		#Blackout 1, 2
execute if entity @s[tag=!Corruption1,tag=!Corruption2,tag=Blackout1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/shade-shackle/mono/radius1
execute if entity @s[tag=!Corruption1,tag=!Corruption2,tag=Blackout2] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/shade-shackle/mono/radius2

	#Duo
		#Corruption 1, 2
		#Blackout 1, 2
execute if entity @s[tag=Corruption1,tag=Blackout1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/shade-shackle/duo/effectpower1-radius1
execute if entity @s[tag=Corruption1,tag=Blackout2] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/shade-shackle/duo/effectpower1-radius2
execute if entity @s[tag=Corruption2,tag=Blackout1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/shade-shackle/duo/effectpower2-radius1
execute if entity @s[tag=Corruption2,tag=Blackout2] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/shade-shackle/duo/effectpower2-radius2
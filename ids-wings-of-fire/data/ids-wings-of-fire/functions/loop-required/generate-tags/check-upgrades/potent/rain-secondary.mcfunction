#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Check Upgrades

	#No Upgrades
execute if entity @s[tag=!Photosynthesis1,tag=!Photosynthesis2,tag=!NaturesWrath1,tag=!NaturesWrath2] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/fertilize

	#Mono
		#Photosynthesis 1, 2
execute if entity @s[tag=Photosynthesis1,tag=!NaturesWrath1,tag=!NaturesWrath2] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/overgrowth/mono/cooldown1
execute if entity @s[tag=Photosynthesis2,tag=!NaturesWrath1,tag=!NaturesWrath2] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/overgrowth/mono/cooldown2
		#NaturesWrath 1, 2
execute if entity @s[tag=!Photosynthesis1,tag=!Photosynthesis2,tag=NaturesWrath1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/overgrowth/mono/duration1
execute if entity @s[tag=!Photosynthesis1,tag=!Photosynthesis2,tag=NaturesWrath2] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/overgrowth/mono/duration2

	#Duo
		#Photosynthesis 1, 2
		#NaturesWrath 1, 2
execute if entity @s[tag=Photosynthesis1,tag=NaturesWrath1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/overgrowth/duo/cooldown1-duration1
execute if entity @s[tag=Photosynthesis1,tag=NaturesWrath2] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/overgrowth/duo/cooldown1-duration2
execute if entity @s[tag=Photosynthesis2,tag=NaturesWrath1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/overgrowth/duo/cooldown2-duration1
execute if entity @s[tag=Photosynthesis2,tag=NaturesWrath2] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/overgrowth/duo/cooldown2-duration2
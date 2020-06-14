#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Check Upgrades

	#No Upgrades
execute if entity @s[tag=!Superheat1,tag=!Superheat2,tag=!Superheat3,tag=!EternalFlame1,tag=!EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/breath-nightwing-fire

	#Mono
		#Superheat 1, 2, 3
execute if entity @s[tag=Superheat1,tag=!EternalFlame1,tag=!EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/mono/cooldown1
execute if entity @s[tag=Superheat2,tag=!EternalFlame1,tag=!EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/mono/cooldown2
execute if entity @s[tag=Superheat3,tag=!EternalFlame1,tag=!EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/mono/cooldown3
		#EternalFlame 1, 2
execute if entity @s[tag=!Superheat1,tag=!Superheat2,tag=!Superheat3,tag=EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/mono/emberlinger1
execute if entity @s[tag=!Superheat1,tag=!Superheat2,tag=!Superheat3,tag=EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/mono/emberlinger2
		#Fission 1
execute if entity @s[tag=!Superheat1,tag=!Superheat2,tag=!Superheat3,tag=!EternalFlame1,tag=!EternalFlame2,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/mono/areainc1

	#Duo
		#Superheat 1, 2, 3
		#EternalFlame 1, 2
execute if entity @s[tag=Superheat1,tag=EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/duo/cooldown1-emberlinger1
execute if entity @s[tag=Superheat1,tag=EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/duo/cooldown1-emberlinger2
execute if entity @s[tag=Superheat2,tag=EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/duo/cooldown2-emberlinger1
execute if entity @s[tag=Superheat2,tag=EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/duo/cooldown2-emberlinger2
execute if entity @s[tag=Superheat3,tag=EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/duo/cooldown3-emberlinger1
execute if entity @s[tag=Superheat3,tag=EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/duo/cooldown3-emberlinger2
		#Superheat 1, 2, 3
		#Fission 1
execute if entity @s[tag=Superheat1,tag=!EternalFlame1,tag=!EternalFlame2,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/duo/cooldown1-areainc1
execute if entity @s[tag=Superheat2,tag=!EternalFlame1,tag=!EternalFlame2,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/duo/cooldown2-areainc1
execute if entity @s[tag=Superheat3,tag=!EternalFlame1,tag=!EternalFlame2,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/duo/cooldown3-areainc1
		#EternalFlame 1, 2
		#Fission 1
execute if entity @s[tag=!Superheat1,tag=!Superheat2,tag=!Superheat3,tag=EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/duo/emberlinger1-areainc1
execute if entity @s[tag=!Superheat1,tag=!Superheat2,tag=!Superheat3,tag=EternalFlame2,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/duo/emberlinger2-areainc1

	#Trio
		#Superheat 1, 2, 3
		#EternalFlame 1, 2
		#Fission 1
execute if entity @s[tag=Superheat1,tag=EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/trio/cooldown1-emberlinger1-areainc1
execute if entity @s[tag=Superheat1,tag=EternalFlame2,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/trio/cooldown1-emberlinger2-areainc1
execute if entity @s[tag=Superheat2,tag=EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/trio/cooldown2-emberlinger1-areainc1
execute if entity @s[tag=Superheat2,tag=EternalFlame2,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/trio/cooldown2-emberlinger2-areainc1
execute if entity @s[tag=Superheat3,tag=EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/trio/cooldown3-emberlinger1-areainc1
execute if entity @s[tag=Superheat3,tag=EternalFlame2,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/upgraded-abilities/flame-breath/trio/cooldown3-emberlinger2-areainc1
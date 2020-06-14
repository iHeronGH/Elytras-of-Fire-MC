#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Check Upgrades

	#No Upgrades
execute if entity @s[tag=!Scorch1,tag=!Scorch2,tag=!Scorch3,tag=!Dehydrate1,tag=!Dehydrate2,tag=!Dehydrate2,tag=!Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/breath-sandwing-fire

	#Mono
		#Scorch 1, 2, 3
execute if entity @s[tag=Scorch1,tag=!Dehydrate1,tag=!Dehydrate2,tag=!Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/mono/cooldown1
execute if entity @s[tag=Scorch2,tag=!Dehydrate1,tag=!Dehydrate2,tag=!Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/mono/cooldown2
execute if entity @s[tag=Scorch3,tag=!Dehydrate1,tag=!Dehydrate2,tag=!Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/mono/cooldown3
		#Dehydrate 1, 2
execute if entity @s[tag=!Scorch1,tag=!Scorch2,tag=!Scorch3,tag=Dehydrate1,tag=!Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/mono/emberlinger1
execute if entity @s[tag=!Scorch1,tag=!Scorch2,tag=!Scorch3,tag=Dehydrate2,tag=!Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/mono/emberlinger2
		#Desolation 1
execute if entity @s[tag=!Scorch1,tag=!Scorch2,tag=!Scorch3,tag=!Dehydrate1,tag=!Dehydrate2,tag=Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/mono/rangeinc1

	#Duo
		#Scorch 1, 2, 3
		#Dehydrate 1, 2
execute if entity @s[tag=Scorch1,tag=Dehydrate1,tag=!Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/duo/cooldown1-emberlinger1
execute if entity @s[tag=Scorch1,tag=Dehydrate2,tag=!Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/duo/cooldown1-emberlinger2
execute if entity @s[tag=Scorch2,tag=Dehydrate1,tag=!Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/duo/cooldown2-emberlinger1
execute if entity @s[tag=Scorch2,tag=Dehydrate2,tag=!Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/duo/cooldown2-emberlinger2
execute if entity @s[tag=Scorch3,tag=Dehydrate1,tag=!Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/duo/cooldown3-emberlinger1
execute if entity @s[tag=Scorch3,tag=Dehydrate2,tag=!Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/duo/cooldown3-emberlinger2
		#Scorch 1, 2, 3
		#Desolation 1
execute if entity @s[tag=Scorch1,tag=!Dehydrate1,tag=!Dehydrate2,tag=Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/duo/cooldown1-rangeinc1
execute if entity @s[tag=Scorch2,tag=!Dehydrate1,tag=!Dehydrate2,tag=Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/duo/cooldown2-rangeinc1
execute if entity @s[tag=Scorch3,tag=!Dehydrate1,tag=!Dehydrate2,tag=Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/duo/cooldown3-rangeinc1
		#Dehydrate 1, 2
		#Desolation 1
execute if entity @s[tag=!Scorch1,tag=!Scorch2,tag=!Scorch3,tag=Dehydrate1,tag=Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/duo/emberlinger1-rangeinc1
execute if entity @s[tag=!Scorch1,tag=!Scorch2,tag=!Scorch3,tag=Dehydrate2,tag=Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/duo/emberlinger2-rangeinc1

	#Trio
		#Scorch 1, 2, 3
		#Dehydrate 1, 2
		#Desolation 1
execute if entity @s[tag=Scorch1,tag=Dehydrate1,tag=Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/trio/cooldown1-emberlinger1-rangeinc1
execute if entity @s[tag=Scorch1,tag=Dehydrate2,tag=Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/trio/cooldown1-emberlinger2-rangeinc1
execute if entity @s[tag=Scorch2,tag=Dehydrate1,tag=Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/trio/cooldown2-emberlinger1-rangeinc1
execute if entity @s[tag=Scorch2,tag=Dehydrate2,tag=Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/trio/cooldown2-emberlinger2-rangeinc1
execute if entity @s[tag=Scorch3,tag=Dehydrate1,tag=Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/trio/cooldown3-emberlinger1-rangeinc1
execute if entity @s[tag=Scorch3,tag=Dehydrate2,tag=Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/upgraded-abilities/flame-breath/trio/cooldown3-emberlinger2-rangeinc1
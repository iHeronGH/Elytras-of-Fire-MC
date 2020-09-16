#Grants Buffs

	#No Upgrades
execute if entity @s[tag=!Photosynthesis1,tag=!Photosynthesis2,tag=!NaturesWrath1,tag=!NaturesWrath2] run function ids-wings-of-fire:loop-required/secondaries/overgrowth

	#Duo
execute if entity @s[tag=Photosynthesis1,tag=NaturesWrath1] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/rainwings/duo/cd1du1
execute if entity @s[tag=Photosynthesis1,tag=NaturesWrath2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/rainwings/duo/cd1du2
execute if entity @s[tag=Photosynthesis2,tag=NaturesWrath1] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/rainwings/duo/cd2du1
execute if entity @s[tag=Photosynthesis2,tag=NaturesWrath2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/rainwings/duo/cd2du2

	#Mono
execute if entity @s[tag=Photosynthesis1,tag=!NaturesWrath1,tag=!NaturesWrath2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/rainwings/mono/cd1
execute if entity @s[tag=Photosynthesis2,tag=!NaturesWrath1,tag=!NaturesWrath2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/rainwings/mono/cd2
execute if entity @s[tag=!Photosynthesis1,tag=!Photosynthesis2,tag=NaturesWrath1] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/rainwings/mono/du1
execute if entity @s[tag=!Photosynthesis1,tag=!Photosynthesis2,tag=NaturesWrath2] run function ids-wings-of-fire:loop-required/secondaries/upgraded-abilities/rainwings/mono/du2
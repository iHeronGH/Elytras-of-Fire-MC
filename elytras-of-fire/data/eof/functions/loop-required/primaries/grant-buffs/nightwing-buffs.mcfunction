#Grants Buffs

	#No Upgrades
execute if entity @s[tag=!Superheat1,tag=!Superheat2,tag=!Superheat3,tag=!EternalFlame1,tag=!EternalFlame2,tag=!Fission1] run function eof:loop-required/primaries/flame-breath

	#Trio
execute if entity @s[tag=Superheat1,tag=EternalFlame1,tag=Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/trio/cd1lf1ai1
execute if entity @s[tag=Superheat1,tag=EternalFlame2,tag=Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/trio/cd1lf2ai1
execute if entity @s[tag=Superheat2,tag=EternalFlame1,tag=Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/trio/cd2lf1ai1
execute if entity @s[tag=Superheat2,tag=EternalFlame2,tag=Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/trio/cd2lf2ai1
execute if entity @s[tag=Superheat3,tag=EternalFlame1,tag=Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/trio/cd3lf1ai1
execute if entity @s[tag=Superheat3,tag=EternalFlame2,tag=Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/trio/cd3lf2ai1

	#Duo
execute if entity @s[tag=Superheat1,tag=EternalFlame1,tag=!Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/duo/cd1lf1
execute if entity @s[tag=Superheat1,tag=EternalFlame2,tag=!Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/duo/cd1lf2
execute if entity @s[tag=Superheat2,tag=EternalFlame1,tag=!Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/duo/cd2lf1
execute if entity @s[tag=Superheat2,tag=EternalFlame2,tag=!Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/duo/cd2lf2
execute if entity @s[tag=Superheat3,tag=EternalFlame1,tag=!Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/duo/cd3lf1
execute if entity @s[tag=Superheat3,tag=EternalFlame2,tag=!Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/duo/cd3lf2
execute if entity @s[tag=Superheat1,tag=!EternalFlame1,tag=!EternalFlame2,tag=Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/duo/cd1ai1
execute if entity @s[tag=Superheat2,tag=!EternalFlame1,tag=!EternalFlame2,tag=Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/duo/cd2ai1
execute if entity @s[tag=Superheat3,tag=!EternalFlame1,tag=!EternalFlame2,tag=Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/duo/cd3ai1
execute if entity @s[tag=!Superheat1,tag=!Superheat2,tag=!Superheat3,tag=EternalFlame1,tag=Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/duo/lf1ai1
execute if entity @s[tag=!Superheat1,tag=!Superheat2,tag=!Superheat3,tag=EternalFlame2,tag=Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/duo/lf2ai1

	#Mono
execute if entity @s[tag=Superheat1,tag=!EternalFlame1,tag=!EternalFlame2,tag=!Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/mono/cd1
execute if entity @s[tag=Superheat2,tag=!EternalFlame1,tag=!EternalFlame2,tag=!Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/mono/cd2
execute if entity @s[tag=Superheat3,tag=!EternalFlame1,tag=!EternalFlame2,tag=!Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/mono/cd3
execute if entity @s[tag=!Superheat1,tag=!Superheat2,tag=!Superheat3,tag=EternalFlame1,tag=!Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/mono/lf1
execute if entity @s[tag=!Superheat1,tag=!Superheat2,tag=!Superheat3,tag=EternalFlame2,tag=!Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/mono/lf2
execute if entity @s[tag=!Superheat1,tag=!Superheat2,tag=!Superheat3,tag=!EternalFlame1,tag=!EternalFlame2,tag=Fission1] run function eof:loop-required/primaries/upgraded-abilities/nightwings/mono/ai1

#Enter Cooldown
tag @s[tag=!CoolDown1] add CoolDown1
function eof:launch-add-ons/announce-cooldown-one
tag @s[tag=!CoolDownActive1] add CoolDownActive1
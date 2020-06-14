#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Grants Buffs

	#No Upgrades
execute if entity @s[tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3,tag=!Permafrost1,tag=!Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/frost-breath

	#Trio
execute if entity @s[tag=ArcticCore1,tag=Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/trio/cd1le1ri1
execute if entity @s[tag=ArcticCore1,tag=Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/trio/cd1le2ri1
execute if entity @s[tag=ArcticCore2,tag=Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/trio/cd2le1ri1
execute if entity @s[tag=ArcticCore2,tag=Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/trio/cd2le2ri1
execute if entity @s[tag=ArcticCore3,tag=Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/trio/cd3le1ri1
execute if entity @s[tag=ArcticCore3,tag=Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/trio/cd3le2ri1

	#Duo
execute if entity @s[tag=ArcticCore1,tag=Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/duo/cd1le1
execute if entity @s[tag=ArcticCore1,tag=Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/duo/cd1le2
execute if entity @s[tag=ArcticCore2,tag=Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/duo/cd2le1
execute if entity @s[tag=ArcticCore2,tag=Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/duo/cd2le2
execute if entity @s[tag=ArcticCore3,tag=Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/duo/cd3le1
execute if entity @s[tag=ArcticCore3,tag=Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/duo/cd3le2
execute if entity @s[tag=ArcticCore1,tag=!Permafrost1,tag=!Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/duo/cd1ri1
execute if entity @s[tag=ArcticCore2,tag=!Permafrost1,tag=!Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/duo/cd2ri1
execute if entity @s[tag=ArcticCore3,tag=!Permafrost1,tag=!Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/duo/cd3ri1
execute if entity @s[tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3,tag=Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/duo/le1ri1
execute if entity @s[tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3,tag=Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/duo/le2ri1

	#Mono
execute if entity @s[tag=ArcticCore1,tag=!Permafrost1,tag=!Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/mono/cd1
execute if entity @s[tag=ArcticCore2,tag=!Permafrost1,tag=!Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/mono/cd2
execute if entity @s[tag=ArcticCore3,tag=!Permafrost1,tag=!Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/mono/cd3
execute if entity @s[tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3,tag=Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/mono/le1
execute if entity @s[tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3,tag=Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/mono/le2
execute if entity @s[tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3,tag=!Permafrost1,tag=!Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/mono/ri1

#Remove Snow
execute as @e[type=area_effect_cloud,tag=snow_aec0,nbt={Age:59}] at @s run setblock ~ ~ ~ air replace
execute as @e[type=area_effect_cloud,tag=snow_aec1,nbt={Age:79}] at @s run setblock ~ ~ ~ air replace
execute as @e[type=area_effect_cloud,tag=snow_aec2,nbt={Age:99}] at @s run setblock ~ ~ ~ air replace

#Enter Cooldown
tag @s[tag=!CoolDown1] add CoolDown1
function ids-wings-of-fire:launch-add-ons/announce-cooldown-one
tag @s[tag=!CoolDownActive1] add CoolDownActive1
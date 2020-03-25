#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Execute Frost Breath
execute if entity @s[tag=!CoolDown1,tag=!ArcticCore1,tag=!Permafrost1,tag=Icefall1] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["ice_ri1"],Particle:"block air",Duration:18,Radius:1f}

#Rotate ice_ri1
execute as @e[type=area_effect_cloud,tag=ice_ri1] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~ ~

#Play Particles
execute at @e[type=area_effect_cloud,tag=ice_ri1] run function ids-wings-of-fire:loop-required/primaries/particles/frost-breath-parts
execute as @e[type=area_effect_cloud,tag=ice_ri1] at @s run tp @s ^ ^ ^0.7

#Effect Entities
execute as @e[type=area_effect_cloud,tag=ice_ri1] at @s positioned ^ ^-1.33 ^0.5 run effect give @e[distance=..0.75] slowness 4 1 true
execute as @e[type=area_effect_cloud,tag=ice_ri1] at @s positioned ^ ^-1.33 ^0.5 run effect give @e[distance=..0.75] mining_fatigue 4 1 true
execute as @e[type=area_effect_cloud,tag=ice_ri1] at @s positioned ^ ^-1.33 ^0.5 run effect give @e[distance=..0.75] weakness 4 0 true

#If Hit a Block or Hits Entity, kill ice_ri1
execute as @e[type=area_effect_cloud,tag=ice_ri1] at @s unless block ^ ^0.1 ^0.1 #ids-wings-of-fire:families/projectile-immune run kill @s
execute as @e[type=area_effect_cloud,tag=ice_ri1] at @s positioned ^ ^-1.33 ^0.45 if entity @e[type=!#arrows,type=!area_effect_cloud,type=!item,distance=..0.74] run kill @s

#Kill Fire
execute as @e[type=area_effect_cloud,tag=ice_ri1] at @s positioned ^ ^ ^1 if block ~ ~0.6 ~ fire run fill ^0.45 ^0.5 ^0.1 ^-0.45 ^-0.5 ^-0.1 air replace fire

#Enter Cooldown
tag @s[tag=!CoolDown1] add CoolDown1
function ids-wings-of-fire:launch-add-ons/announce-cooldown-one
tag @s[tag=!CoolDownActive1] add CoolDownActive1
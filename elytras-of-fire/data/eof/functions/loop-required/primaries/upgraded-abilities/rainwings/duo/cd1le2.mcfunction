#Execute Venom Shot
execute if entity @s[tag=!CoolDown1,tag=Reaction1,tag=Noxious2,tag=!Potency1] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["rain_cd1le2","getRot"],Particle:"block air",Duration:12,Radius:1f}

#Rotate rain_cd1le2
execute as @e[type=area_effect_cloud,tag=rain_cd1le2,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,tag=rain_cd1le2,tag=getRot] run tag @s remove getRot

#Play Particles
execute at @e[type=area_effect_cloud,tag=rain_cd1le2] run particle squid_ink ~ ~ ~ 0 0 0 0.0125 45 force
execute as @e[type=area_effect_cloud,tag=rain_cd1le2] at @s run tp @s ^ ^ ^1

#Effect Entities
execute as @e[type=area_effect_cloud,tag=rain_cd1le2] at @s positioned ^ ^ ^0.5 positioned ~ ~-1.2 ~ run effect give @e[distance=..0.8] wither 4 2 true

#If Hit a Block or Hits Entity, kill rain_cd1le2
execute as @e[type=area_effect_cloud,tag=rain_cd1le2] at @s unless block ^ ^0.1 ^0.1 #eof:families/projectile-immune run kill @s
execute as @e[type=area_effect_cloud,tag=rain_cd1le2] at @s positioned ^ ^ ^0.45 positioned ~ ~-1.2 ~ if entity @e[type=!#arrows,type=!area_effect_cloud,type=!item,distance=..0.79] run kill @s
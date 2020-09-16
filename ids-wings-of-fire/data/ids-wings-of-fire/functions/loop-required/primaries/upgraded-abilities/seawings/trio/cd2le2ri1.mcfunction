#Execute Tidal Wave
execute if entity @s[tag=!CoolDown1,tag=HighTide2,tag=Waterlogged2,tag=Torrent1] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["sea_cd2le2ri1-1","sea_cd2le2ri1","getRot"],Particle:"block air",Duration:15,Radius:1f}
execute if entity @s[tag=!CoolDown1,tag=HighTide2,tag=Waterlogged2,tag=Torrent1] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["sea_cd2le2ri1-2","sea_cd2le2ri1","getRot"],Particle:"block air",Duration:15,Radius:1f}
execute if entity @s[tag=!CoolDown1,tag=HighTide2,tag=Waterlogged2,tag=Torrent1] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["sea_cd2le2ri1-3","sea_cd2le2ri1","getRot"],Particle:"block air",Duration:15,Radius:1f}
execute if entity @s[tag=!CoolDown1,tag=HighTide2,tag=Waterlogged2,tag=Torrent1] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["sea_cd2le2ri1-4","sea_cd2le2ri1","getRot"],Particle:"block air",Duration:15,Radius:1f}
execute if entity @s[tag=!CoolDown1,tag=HighTide2,tag=Waterlogged2,tag=Torrent1] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["sea_cd2le2ri1-5","sea_cd2le2ri1","getRot"],Particle:"block air",Duration:15,Radius:1f}

#Rotate sea_cd2le2ri1-s
execute as @e[type=area_effect_cloud,tag=sea_cd2le2ri1-1,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~-40 ~
execute as @e[type=area_effect_cloud,tag=sea_cd2le2ri1-2,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~-20 ~
execute as @e[type=area_effect_cloud,tag=sea_cd2le2ri1-3,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,tag=sea_cd2le2ri1-4,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~20 ~
execute as @e[type=area_effect_cloud,tag=sea_cd2le2ri1-5,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~40 ~
execute as @e[type=area_effect_cloud,tag=sea_cd2le2ri1,tag=getRot] run tag @s remove getRot

#Play Particles
execute at @e[type=area_effect_cloud,tag=sea_cd2le2ri1] run function ids-wings-of-fire:loop-required/primaries/particles/tidal-wave-parts
execute as @e[type=area_effect_cloud,tag=sea_cd2le2ri1] at @s run tp @s ^ ^ ^0.55

#Effect Entities
execute as @e[type=area_effect_cloud,tag=sea_cd2le2ri1] at @s positioned ^ ^ ^0.5 positioned ~ ~-1.2 ~ run effect give @e[distance=..0.75] slowness 6 0 true
execute as @e[type=area_effect_cloud,tag=sea_cd2le2ri1] at @s positioned ^ ^ ^0.5 positioned ~ ~-1.2 ~ run effect give @e[distance=..0.75] mining_fatigue 6 1 true

#If Hit a Block or Hits Entity, kill sea_cd2le2ri1
execute as @e[type=area_effect_cloud,tag=sea_cd2le2ri1] at @s unless block ^ ^0.1 ^0.1 #ids-wings-of-fire:families/projectile-immune unless block ^ ^0.1 ^0.1 water run kill @s
execute as @e[type=area_effect_cloud,tag=sea_cd2le2ri1] at @s positioned ^ ^ ^0.45 positioned ~ ~-1.2 ~ if entity @e[type=!#arrows,type=!area_effect_cloud,type=!item,distance=..0.74] run kill @s

#Kill Fire and TNT
execute as @e[type=area_effect_cloud,tag=sea_cd2le2ri1] at @s positioned ^ ^ ^1 if block ~ ~ ~ fire run fill ^1 ^0.25 ^1 ^-1 ^-0.25 ^-1 air replace fire
execute as @e[type=area_effect_cloud,tag=sea_cd2le2ri1] at @s positioned ^ ^-0.2625 ^ if entity @e[type=tnt,distance=..1.33] run execute as @e[type=tnt] positioned as @s if entity @e[type=area_effect_cloud,tag=sea_cd2le2ri1,distance=..1.33] run fill ~ ~ ~ ~ ~ ~ tnt replace #ids-wings-of-fire:families/airs
execute as @e[type=area_effect_cloud,tag=sea_cd2le2ri1] at @s positioned ^ ^-0.2625 ^ if entity @e[type=tnt,distance=..1.33] run kill @e[type=tnt,distance=..1.33]
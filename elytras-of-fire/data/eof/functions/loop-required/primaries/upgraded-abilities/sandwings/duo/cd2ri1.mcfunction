#Execute Flame Breath
execute if entity @s[tag=!CoolDown1,tag=Scorch2,tag=!Dehydrate1,tag=Desolation1] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["sand_cd2ri1","getRot"],Particle:"block air",Duration:18,Radius:1f}

#Rotate sand_cd2ri1
execute as @e[type=area_effect_cloud,tag=sand_cd2ri1,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,tag=sand_cd2ri1,tag=getRot] run tag @s remove getRot

#Play Particles
execute at @e[type=area_effect_cloud,tag=sand_cd2ri1] run function eof:loop-required/primaries/particles/flame-breath-parts
execute as @e[type=area_effect_cloud,tag=sand_cd2ri1] at @s run tp @s ^ ^ ^0.7

#Effect Entities
execute as @e[type=area_effect_cloud,tag=sand_cd2ri1] at @s positioned ^ ^ ^0.7 run fill ^0.5 ^0.55 ^0.35 ^-0.5 ^ ^0.1 fire[age=15] replace #eof:families/airs

#If Hit a Block or Hits Entity, kill sand_cd2ri1
execute as @e[type=area_effect_cloud,tag=sand_cd2ri1] at @s unless block ^ ^0.2 ^0.15 #eof:families/projectile-immune run kill @s
execute as @e[type=area_effect_cloud,tag=sand_cd2ri1] at @s positioned ^ ^ ^0.45 positioned ~ ~-1.2 ~ if entity @e[type=!#arrows,type=!area_effect_cloud,type=!item,distance=..0.75] run kill @s
execute as @e[type=area_effect_cloud,tag=sand_cd2ri1] at @s run kill @e[type=arrow,distance=..1.875]
#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Execute Flame Breath
execute if entity @s[tag=!CoolDown1,tag=Scorch3,tag=Dehydrate1,tag=Desolation1] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["sand_cd3lf1ri1"],Particle:"block air",Duration:18,Radius:1f}

#Rotate sand_cd3lf1ri1
execute as @e[type=area_effect_cloud,tag=sand_cd3lf1ri1] at @s rotated as @s[tag=!CoolDown1] run tp @s ~ ~ ~ ~ ~

#Play Particles
execute at @e[type=area_effect_cloud,tag=sand_cd3lf1ri1] run function ids-wings-of-fire:loop-required/primaries/particles/flame-breath-parts
execute as @e[type=area_effect_cloud,tag=sand_cd3lf1ri1] at @s run tp @s ^ ^ ^0.7

#Effect Entities
execute as @e[type=area_effect_cloud,tag=sand_cd3lf1ri1] at @s positioned ^ ^ ^0.7 run fill ^0.5 ^0.55 ^0.35 ^-0.5 ^ ^0.1 fire[age=10] replace #ids-wings-of-fire:families/airs

#If Hit a Block or Hits Entity, kill sand_cd3lf1ri1
execute as @e[type=area_effect_cloud,tag=sand_cd3lf1ri1] at @s unless block ^ ^0.2 ^0.15 #ids-wings-of-fire:families/projectile-immune run kill @s
execute as @e[type=area_effect_cloud,tag=sand_cd3lf1ri1] at @s positioned ^ ^-1.33 ^0.45 if entity @e[type=!#arrows,type=!area_effect_cloud,type=!item,distance=..0.75] run kill @s
execute as @e[type=area_effect_cloud,tag=sand_cd3lf1ri1] at @s run kill @e[type=arrow,distance=..1.875]

#Enter Cooldown
tag @s[tag=!CoolDown1] add CoolDown1
function ids-wings-of-fire:launch-add-ons/announce-cooldown-one
tag @s[tag=!CoolDownActive1] add CoolDownActive1
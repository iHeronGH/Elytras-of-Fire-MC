#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Execute Flame Breath
execute if entity @s[tag=!CoolDown1,nbt={SelectedItem:{tag:{stock:1}}}] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["FlameLine","getRot"],Particle:"block air",Duration:14,Radius:1f}

#Rotate FlameLine
execute as @e[type=area_effect_cloud,tag=FlameLine,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,tag=FlameLine,tag=getRot] run tag @s remove getRot

#Play Particles
execute at @e[type=area_effect_cloud,tag=FlameLine] run function ids-wings-of-fire:loop-required/primaries/particles/flame-breath-parts
execute as @e[type=area_effect_cloud,tag=FlameLine] at @s run tp @s ^ ^ ^0.7

#Effect Entities
execute as @e[type=area_effect_cloud,tag=FlameLine] at @s positioned ^ ^ ^0.7 run fill ^0.5 ^0.55 ^0.35 ^-0.5 ^ ^0.1 fire[age=15] replace #ids-wings-of-fire:families/airs

#If Hit a Block or Hits Entity, kill FlameLine
execute as @e[type=area_effect_cloud,tag=FlameLine] at @s unless block ^ ^0.2 ^0.15 #ids-wings-of-fire:families/projectile-immune run kill @s
execute as @e[type=area_effect_cloud,tag=FlameLine] at @s positioned ^ ^-1.33 ^0.45 if entity @e[type=!#arrows,type=!area_effect_cloud,type=!item,distance=..0.75] run kill @s
execute as @e[type=area_effect_cloud,tag=FlameLine] at @s run kill @e[type=arrow,distance=..1.875]
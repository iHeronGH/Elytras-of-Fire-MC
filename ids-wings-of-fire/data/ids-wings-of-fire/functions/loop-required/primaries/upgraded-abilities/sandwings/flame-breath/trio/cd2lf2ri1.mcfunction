#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Execute Flame Breath
execute if entity @e[type=player,tag=FlameActive,tag=!CoolDown1,tag=Scorch2,tag=Dehydrate2,tag=Desolation1] at @e[type=player,tag=FlameActive,tag=!CoolDown1,tag=Scorch2,tag=Dehydrate2,tag=Desolation1] run summon minecraft:area_effect_cloud ^ ^ ^10.5 {Tags:["FlameEnd"],Particle:"block air",Duration:0,Radius:0.05f}
execute if entity @e[type=player,tag=FlameActive,tag=!CoolDown1,tag=Scorch2,tag=Dehydrate2,tag=Desolation1] at @e[type=player,tag=FlameActive,tag=!CoolDown1,tag=Scorch2,tag=Dehydrate2,tag=Desolation1] run summon minecraft:area_effect_cloud ~ ~1.2 ~ {Tags:["sand_cd2lf2ri1"],Particle:"block air",Duration:18,Radius:1f}

#Rotate FlameLine
execute if entity @e[type=player,tag=FlameActive,tag=!CoolDown1,tag=Scorch2,tag=Dehydrate2,tag=Desolation1] at @e[type=player,tag=FlameActive,tag=!CoolDown1,tag=Scorch2,tag=Dehydrate2,tag=Desolation1] run tp @e[tag=sand_cd2lf2ri1,limit=1,sort=nearest] ~ ~ ~ facing entity @e[tag=FlameEnd,limit=1,distance=10.3..10.7,sort=nearest] eyes

#Play Particles
execute as @e[tag=sand_cd2lf2ri1] at @s run particle minecraft:flame ~ ~0.6 ~ 0 0 0 0.02675 25 force
execute as @e[tag=sand_cd2lf2ri1] at @s run particle minecraft:lava ~ ~0.3 ~ 0 0 0 0.01 2 force
execute as @e[tag=sand_cd2lf2ri1] at @s run tp @s ^ ^ ^0.7

#Effect Entities
execute as @e[tag=sand_cd2lf2ri1] at @s positioned ^ ^ ^0.95 run fill ^0.45 ^0.6 ^0.85 ^-0.45 ^0.45 ^0.7 minecraft:fire[age=9] replace #ids-wings-of-fire:families/airs

#If Hit a Block or Hits Entity, kill FlameLine
execute as @e[tag=sand_cd2lf2ri1] at @s unless block ^ ^0.8 ^ #ids-wings-of-fire:families/projectile-immune run kill @s
execute as @e[tag=sand_cd2lf2ri1] at @s positioned ^ ^ ^0.5 if entity @e[type=!minecraft:area_effect_cloud,type=!item,distance=..0.8] run kill @s
execute as @e[tag=sand_cd2lf2ri1] at @s run kill @e[type=arrow,distance=..1.875]

#Enter Cooldown
execute if entity @e[type=player,tag=FlameActive,tag=!CoolDown1] run tag @e[type=player,tag=FlameActive,tag=!CoolDown1] add CoolDown1
function ids-wings-of-fire:launch-add-ons/announce-cooldown-one
execute if entity @e[type=player,tag=FlameActive,tag=!CoolDown1Active] run tag @e[type=player,tag=FlameActive,tag=!CoolDownActive1] add CoolDownActive1
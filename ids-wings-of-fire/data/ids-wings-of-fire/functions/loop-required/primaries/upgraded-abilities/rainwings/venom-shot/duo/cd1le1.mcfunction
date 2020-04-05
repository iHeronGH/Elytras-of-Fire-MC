#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Execute Venom Shot
execute if entity @s[tag=!CoolDown1,tag=Reaction1,tag=Noxious1,tag=!Potency1] at @s run summon area_effect_cloud ~ ~1.2 ~ {Tags:["rain_cd1le1","getRot"],Particle:"block air",Duration:12,Radius:1f}

#Rotate rain_cd1le1
execute as @e[type=area_effect_cloud,tag=rain_cd1le1,tag=getRot] at @s rotated as @p[tag=!CoolDown1] run tp @s ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,tag=rain_cd1le1,tag=getRot] run tag @s remove getRot

#Play Particles
execute at @e[type=area_effect_cloud,tag=rain_cd1le1] run particle squid_ink ~ ~ ~ 0 0 0 0.0125 45 force
execute as @e[type=area_effect_cloud,tag=rain_cd1le1] at @s run tp @s ^ ^ ^1

#Effect Entities
execute as @e[type=area_effect_cloud,tag=rain_cd1le1] at @s positioned ^ ^-1.33 ^0.5 run effect give @e[distance=..0.8] wither 3 2 true

#If Hit a Block or Hits Entity, kill rain_cd1le1
execute as @e[type=area_effect_cloud,tag=rain_cd1le1] at @s unless block ^ ^0.1 ^0.1 #ids-wings-of-fire:families/projectile-immune run kill @s
execute as @e[type=area_effect_cloud,tag=rain_cd1le1] at @s positioned ^ ^-1.33 ^0.45 if entity @e[type=!#arrows,type=!area_effect_cloud,type=!item,distance=..0.79] run kill @s

#Enter Cooldown
tag @s[tag=!CoolDown1] add CoolDown1
function ids-wings-of-fire:launch-add-ons/announce-cooldown-one
tag @s[tag=!CoolDownActive1] add CoolDownActive1
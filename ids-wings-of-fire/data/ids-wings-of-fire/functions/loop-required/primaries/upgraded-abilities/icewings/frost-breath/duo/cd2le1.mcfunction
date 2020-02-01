#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Execute Frost Breath
execute if entity @e[type=player,tag=FrostActive,tag=!CoolDown1,tag=ArcticCore2,tag=Permafrost1,tag=!Icefall1] at @e[type=player,tag=FrostActive,tag=!CoolDown1,tag=ArcticCore2,tag=Permafrost1,tag=!Icefall1] run summon minecraft:area_effect_cloud ^ ^ ^10.5 {Tags:["FrostEnd"],Particle:"block air",Duration:0,Radius:0.05f}
execute if entity @e[type=player,tag=FrostActive,tag=!CoolDown1,tag=ArcticCore2,tag=Permafrost1,tag=!Icefall1] at @e[type=player,tag=FrostActive,tag=!CoolDown1,tag=ArcticCore2,tag=Permafrost1,tag=!Icefall1] run summon minecraft:area_effect_cloud ~ ~1.2 ~ {Tags:["ice_cd2le1"],Particle:"block air",Duration:14,Radius:1f}

#Rotate ice_cd2le1
execute if entity @e[type=player,tag=FrostActive,tag=ArcticCore2,tag=Permafrost1,tag=!Icefall1] at @e[type=player,tag=FrostActive,tag=ArcticCore2,tag=Permafrost1,tag=!Icefall1] run tp @e[tag=ice_cd2le1,limit=1,sort=nearest] ~ ~ ~ facing entity @e[tag=FrostEnd,limit=1,distance=10.3..10.7,sort=nearest] eyes

#Play Particles
execute as @e[tag=ice_cd2le1] at @s run particle minecraft:item_snowball ~ ~0.6 ~ 0 0 0 1 50 force
execute as @e[tag=ice_cd2le1] at @s run particle minecraft:block ice ~ ~0.6 ~ 0 0 0 0.025 5 force
execute as @e[tag=ice_cd2le1] at @s run particle minecraft:dust 1 1 1 1 ~ ~0.5 ~ 0 0 0 5 40 force
execute as @e[tag=ice_cd2le1] at @s run tp @s ^ ^ ^0.7

#Effect Entities
execute as @e[tag=ice_cd2le1] at @s positioned ^ ^ ^0.75 run effect give @e[distance=..1] minecraft:slowness 5 1 true
execute as @e[tag=ice_cd2le1] at @s positioned ^ ^ ^0.75 run effect give @e[distance=..1] minecraft:mining_fatigue 5 1 true
execute as @e[tag=ice_cd2le1] at @s positioned ^ ^ ^0.75 run effect give @e[distance=..1] minecraft:weakness 5 0 true

#If Hit a Block or Hits Entity, kill ice_cd2le1
execute as @e[tag=ice_cd2le1] at @s unless block ^ ^0.8 ^ #ids-wings-of-fire:families/projectile-immune run kill @s
execute as @e[tag=ice_cd2le1] at @s positioned ^ ^ ^0.5 if entity @e[type=!minecraft:area_effect_cloud,type=!item,distance=..0.8] unless entity @e[type=arrow,distance=..0.9] run kill @s

#Kill Fire
execute as @e[tag=ice_cd2le1] at @s positioned ^ ^ ^1 if block ~ ~0.6 ~ minecraft:fire run fill ^0.45 ^0.5 ^ ^-0.45 ^-0.5 ^ minecraft:air replace minecraft:fire

#Enter Cooldown
execute if entity @e[type=player,tag=FrostActive,tag=!CoolDown1] run tag @e[type=player,tag=FrostActive,tag=!CoolDown1] add CoolDown1
function ids-wings-of-fire:launch-add-ons/announce-cooldown-one
execute if entity @e[type=player,tag=FrostActive,tag=!CoolDown1Active] run tag @e[type=player,tag=FrostActive,tag=!CoolDownActive1] add CoolDownActive1
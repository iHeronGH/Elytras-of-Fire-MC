#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Execute Tidal Wave
execute if entity @e[type=player,tag=WaterActive,tag=!CoolDown1,tag=!HighTide1,tag=Waterlogged1,tag=!Torrent1] at @e[type=player,tag=WaterActive,tag=!CoolDown1,tag=!HighTide1,tag=Waterlogged1,tag=!Torrent1] run summon minecraft:area_effect_cloud ^ ^ ^7 {Tags:["WaterEnd"],Particle:"block air",Duration:0,Radius:0.05f}
execute if entity @e[type=player,tag=WaterActive,tag=!CoolDown1,tag=!HighTide1,tag=Waterlogged1,tag=!Torrent1] at @e[type=player,tag=WaterActive,tag=!CoolDown1,tag=!HighTide1,tag=Waterlogged1,tag=!Torrent1] run summon minecraft:area_effect_cloud ~ ~1.2 ~ {Tags:["water_le1","water_le1-1"],Particle:"block air",Duration:12,Radius:1f}
execute if entity @e[type=player,tag=WaterActive,tag=!CoolDown1,tag=!HighTide1,tag=Waterlogged1,tag=!Torrent1] at @e[type=player,tag=WaterActive,tag=!CoolDown1,tag=!HighTide1,tag=Waterlogged1,tag=!Torrent1] run summon minecraft:area_effect_cloud ~ ~1.2 ~ {Tags:["water_le1","water_le1-2"],Particle:"block air",Duration:12,Radius:1f}
execute if entity @e[type=player,tag=WaterActive,tag=!CoolDown1,tag=!HighTide1,tag=Waterlogged1,tag=!Torrent1] at @e[type=player,tag=WaterActive,tag=!CoolDown1,tag=!HighTide1,tag=Waterlogged1,tag=!Torrent1] run summon minecraft:area_effect_cloud ~ ~1.2 ~ {Tags:["water_le1","water_le1-3"],Particle:"block air",Duration:12,Radius:1f}
execute if entity @e[type=player,tag=WaterActive,tag=!CoolDown1,tag=!HighTide1,tag=Waterlogged1,tag=!Torrent1] at @e[type=player,tag=WaterActive,tag=!CoolDown1,tag=!HighTide1,tag=Waterlogged1,tag=!Torrent1] run summon minecraft:area_effect_cloud ~ ~1.2 ~ {Tags:["water_le1","water_le1-4"],Particle:"block air",Duration:12,Radius:1f}
execute if entity @e[type=player,tag=WaterActive,tag=!CoolDown1,tag=!HighTide1,tag=Waterlogged1,tag=!Torrent1] at @e[type=player,tag=WaterActive,tag=!CoolDown1,tag=!HighTide1,tag=Waterlogged1,tag=!Torrent1] run summon minecraft:area_effect_cloud ~ ~1.2 ~ {Tags:["water_le1","water_le1-5"],Particle:"block air",Duration:12,Radius:1f}

#Rotate WaterLines
execute as @a[tag=WaterActive] at @s run tp @e[tag=water_le1,limit=1,sort=nearest] ~ ~ ~ facing entity @e[tag=WaterEnd,limit=1,distance=6.8..7.2,sort=nearest] feet
execute as @a[tag=WaterActive] at @s rotated as @e[tag=water_le1,limit=1,distance=..0.1] run tp @e[tag=water_le1-2,limit=1,sort=nearest] ~ ~ ~ ~-17.5 ~
execute as @a[tag=WaterActive] at @s rotated as @e[tag=water_le1,limit=1,distance=..0.1] run tp @e[tag=water_le1-3,limit=1,sort=nearest] ~ ~ ~ ~17.5 ~
execute as @a[tag=WaterActive] at @s rotated as @e[tag=water_le1,limit=1,distance=..0.1] run tp @e[tag=water_le1-4,limit=1,sort=nearest] ~ ~ ~ ~-35 ~
execute as @a[tag=WaterActive] at @s rotated as @e[tag=water_le1,limit=1,distance=..0.1] run tp @e[tag=water_le1-5,limit=1,sort=nearest] ~ ~ ~ ~35 ~

#Play Particles
execute as @e[tag=water_le1] at @s run particle minecraft:fishing ~ ~0.6 ~ 0 0 0 0.0275 40 force
execute as @e[tag=water_le1] at @s run particle minecraft:item light_blue_stained_glass_pane ~ ~0.6 ~ 0 0 0 0.07 5 force
execute as @e[tag=water_le1] at @s run particle minecraft:falling_water ~ ~0.6 ~ 0 0 0 0.1 15 force
execute as @e[tag=water_le1] at @s run tp @s ^ ^ ^0.55

#Effect Entities
execute as @e[tag=water_le1] at @s positioned ^ ^ ^0.75 run effect give @e[distance=..1] minecraft:slowness 5 0 true
execute as @e[tag=water_le1] at @s positioned ^ ^ ^0.75 run effect give @e[distance=..1] minecraft:mining_fatigue 5 1 true
execute as @e[tag=water_le1] at @s positioned ^ ^ ^1 run effect give @e[distance=..1] minecraft:nausea 8 0 true

#If Hit a Block or Hits Entity, kill water_le1
execute as @e[tag=water_le1] at @s unless block ^ ^0.8 ^ minecraft:water unless block ^ ^0.8 ^ #ids-wings-of-fire:families/projectile-immune run kill @s

#Kill Fire and TNT
execute as @e[tag=water_le1] at @s positioned ^ ^ ^1 if block ~ ~0.6 ~ minecraft:fire run fill ^0.45 ^0.5 ^ ^-0.45 ^-0.5 ^ minecraft:air replace minecraft:fire
execute as @e[tag=water_le1] at @s positioned ^ ^ ^1 if entity @e[type=tnt,distance=..0.9] run kill @e[type=tnt,distance=..0.9]

#Enter Cooldown
execute if entity @e[type=player,tag=WaterActive,tag=!CoolDown1,tag=!HighTide1,tag=Waterlogged1,tag=!Torrent1] run tag @e[type=player,tag=WaterActive,tag=!CoolDown1,tag=!HighTide1,tag=Waterlogged1,tag=!Torrent1] add CoolDown1
function ids-wings-of-fire:launch-add-ons/announce-cooldown-one
execute if entity @e[type=player,tag=WaterActive,tag=!CoolDown1Active] run tag @e[type=player,tag=WaterActive,tag=!CoolDownActive1] add CoolDownActive1
#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Execute Venom Shot
execute if entity @e[type=player,tag=VenomActive,tag=!CoolDown1,tag=!Reaction1,tag=!Noxious1,tag=Potency1] at @e[type=player,tag=VenomActive,tag=!CoolDown1,tag=!Reaction1,tag=!Noxious1,tag=Potency1] run summon minecraft:area_effect_cloud ^ ^ ^10.5 {Tags:["VenomEnd"],Particle:"block air",Duration:0,Radius:0.05f}
execute if entity @e[type=player,tag=VenomActive,tag=!CoolDown1,tag=!Reaction1,tag=!Noxious1,tag=Potency1] at @e[type=player,tag=VenomActive,tag=!CoolDown1,tag=!Reaction1,tag=!Noxious1,tag=Potency1] run summon minecraft:area_effect_cloud ~ ~1.2 ~ {Tags:["venom_ri1"],Particle:"block air",Duration:14,Radius:1f}

#Rotate venom_ri1
execute if entity @e[type=player,tag=VenomActive,tag=!Reaction1,tag=!Noxious1,tag=Potency1] at @e[type=player,tag=VenomActive,tag=!Reaction1,tag=!Noxious1,tag=Potency1] run tp @e[tag=venom_ri1,limit=1,sort=nearest] ~ ~ ~ facing entity @e[tag=VenomEnd,limit=1,distance=10.3..10.7,sort=nearest] eyes

#Play Particles
execute as @e[tag=venom_ri1] at @s run particle minecraft:squid_ink ^ ^0.6 ^ 0 0 0 0.0125 45 force
execute as @e[tag=venom_ri1] at @s run tp @s ^ ^ ^1

#Effect Entities
execute as @e[tag=venom_ri1] at @s positioned ^ ^ ^0.75 run effect give @e[distance=..1.1] minecraft:wither 3 2 true

#If Hit a Block or Hits Entity, kill venom_ri1
execute as @e[tag=venom_ri1] at @s unless block ^ ^0.8 ^ minecraft:vine unless block ^ ^0.8 ^ #ids-wings-of-fire:families/projectile-immune run kill @s
execute as @e[tag=venom_ri1] at @s positioned ^ ^ ^0.5 if entity @e[type=!minecraft:area_effect_cloud,type=!item,distance=..0.75] unless entity @e[type=arrow,distance=..0.9] run kill @s

#Enter Cooldown
execute if entity @e[type=player,tag=VenomActive,tag=!CoolDown1] run tag @e[type=player,tag=VenomActive,tag=!CoolDown1] add CoolDown1
function ids-wings-of-fire:launch-add-ons/announce-cooldown-one
execute if entity @e[type=player,tag=VenomActive,tag=!CoolDown1Active] run tag @e[type=player,tag=VenomActive,tag=!CoolDownActive1] add CoolDownActive1
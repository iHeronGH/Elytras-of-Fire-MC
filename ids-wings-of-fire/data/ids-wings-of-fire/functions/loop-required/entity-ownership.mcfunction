#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Set Scores
scoreboard players set @s[scores={throwSnow=1..}] throwSnow 0
scoreboard players set @s[scores={throwEgg=1..}] throwEgg 0
scoreboard players set @s[scores={shootArrow=1..}] shootArrow 0

#Add/Remove premEntity Tag
execute if entity @s[scores={premonActive=200..}] at @s if entity @s[scores={throwSnow=1..}] if entity @s[scores={throwEgg=1..}] if entity @s[scores={shootArrow=1..}] run tag @e[type=#ids-wings-of-fire:throwable-entities,limit=1,sort=nearest,distance=..2] add premEntity
execute as @e[type=#ids-wings-of-fire:throwable-entities,tag=premEntity,nbt={inGround:0b}] at @s unless entity @p[team=NightWings,scores={premonActive=200..},distance=..1.75] run tag @s remove premEntity

execute if entity @s[scores={premonActive=200..}] at @s positioned ~-0.6 ~-0.2 ~-0.6 if entity @e[type=#ids-wings-of-fire:throwable-entities,tag=!premEntity,dx=1.2,dy=2.2,dz=1.2] run kill @e[type=#ids-wings-of-fire:throwable-entities,tag=!premEntity,dx=1,dy=2,dz=1]
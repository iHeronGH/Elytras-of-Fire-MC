#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add/Remove premEntity Tag
execute at @s[scores={throwSnow=1..}] positioned ~ ~0.9 ~ run tag @e[type=snowball,tag=!premEntity,limit=1,distance=..2.5] add premEntity
execute at @s[scores={throwEgg=1..}] positioned ~ ~0.9 ~ run tag @e[type=egg,tag=!premEntity,limit=1,distance=..2.5] add premEntity
execute at @s[scores={shootArrow=1..}] positioned ~ ~0.9 ~ run tag @e[type=arrow,tag=!premEntity,limit=1,distance=..2.5] add premEntity
execute as @p at @s positioned ~ ~0.9 ~ as @e[type=#ids-wings-of-fire:throwable-entities,nbt={inGround:0b},distance=..2.5] at @s positioned ~ ~-0.9 ~ unless entity @a[team=NightWings,scores={premonActive=200..},distance=..2.5] run tag @s remove premEntity
execute at @s positioned ~ ~0.9 ~ as @e[type=#ids-wings-of-fire:throwable-entities,tag=!premEntity,distance=..2.5] run kill @s

#Set Scores
scoreboard players set @s[scores={throwSnow=1..}] throwSnow 0
scoreboard players set @s[scores={throwEgg=1..}] throwEgg 0
scoreboard players set @s[scores={shootArrow=1..}] shootArrow 0
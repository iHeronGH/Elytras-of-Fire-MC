#Add/Remove premEntity Tag
execute at @s[scores={throwSnow=1..}] positioned ~ ~1.2 ~ run tag @e[type=snowball,tag=!premEntity,limit=1,distance=..3] add premEntity
execute at @s[scores={throwEgg=1..}] positioned ~ ~1.2 ~ run tag @e[type=egg,tag=!premEntity,limit=1,distance=..3] add premEntity
execute at @s[scores={shootArrow=1..}] positioned ~ ~1.2 ~ run tag @e[type=arrow,tag=!premEntity,limit=1,distance=..3] add premEntity
execute at @s[scores={useRod=1..}] positioned ~ ~1.2 ~ run tag @e[type=fishing_bobber,tag=!premEntity,limit=1,distance=..3] add premEntity
execute at @s positioned ~ ~1.2 ~ as @e[type=#ids-wings-of-fire:throwable-entities,nbt={inGround:0b},distance=..3] at @s positioned ~ ~-1.2 ~ unless entity @a[team=NightWings,scores={premonActive=200..},distance=..3] run tag @s remove premEntity
execute at @s positioned ~ ~1.2 ~ as @e[type=#ids-wings-of-fire:throwable-entities,tag=!premEntity,distance=..3] run kill @s

#Set Scores
scoreboard players set @s[scores={throwSnow=1..}] throwSnow 0
scoreboard players set @s[scores={throwEgg=1..}] throwEgg 0
scoreboard players set @s[scores={shootArrow=1..}] shootArrow 0
scoreboard players set @s[scores={useRod=1..}] useRod 0
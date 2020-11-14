#Increment Time
execute as @e[tag=hasFrost1] run scoreboard players add @s hasFrost 1
execute as @e[tag=hasFrost2] run scoreboard players add @s hasFrost 1
execute as @e[tag=hasFrost3] run scoreboard players add @s hasFrost 1

#Remove Synergy
execute as @e[tag=hasFrost1,scores={hasFrost=80..}] run scoreboard players set @s hasFrost -1
execute as @e[tag=hasFrost2,scores={hasFrost=100..}] run scoreboard players set @s hasFrost -2
execute as @e[tag=hasFrost3,scores={hasFrost=120..}] run scoreboard players set @s hasFrost -3
execute as @e[scores={hasFrost=-1}] run tag @s remove hasFrost1
execute as @e[scores={hasFrost=-2}] run tag @s remove hasFrost2
execute as @e[scores={hasFrost=-3}] run tag @s remove hasFrost3
execute as @e[scores={hasFrost=..-1}] run scoreboard players reset @s hasFrost
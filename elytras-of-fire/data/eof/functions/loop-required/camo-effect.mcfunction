#Get FollowRange
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:12,distance=..16] store result score @s FollowRange run data get entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:16,distance=..20] store result score @s FollowRange run data get entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:18,distance=..22] store result score @s FollowRange run data get entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:20,distance=..24] store result score @s FollowRange run data get entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:32,distance=..36] store result score @s FollowRange run data get entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:35,distance=..39] store result score @s FollowRange run data get entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:40,distance=..44] store result score @s FollowRange run data get entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:48,distance=..52] store result score @s FollowRange run data get entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:64,distance=..68] store result score @s FollowRange run data get entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:100,distance=..104] store result score @s FollowRange run data get entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base

#Set FollowRange
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:12,distance=..14] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 3
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:16,distance=..18] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 4
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:18,distance=..20] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 4
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:20,distance=..22] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 5
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:32,distance=..34] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 8
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:35,distance=..37] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 8
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:40,distance=..42] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 10
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:48,distance=..50] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 12
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:64,distance=..66] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 16
execute at @s[predicate=eof:detect-sneak] as @e[type=#eof:100,distance=..102] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 25

#Initialize FollowRange
execute as @e[type=#eof:12,scores={FollowRange=3}] at @s unless entity @a[team=RainWings,predicate=eof:detect-sneak,distance=..14] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 12
execute as @e[type=#eof:16,scores={FollowRange=4}] at @s unless entity @a[team=RainWings,predicate=eof:detect-sneak,distance=..18] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 16
execute as @e[type=#eof:18,scores={FollowRange=4}] at @s unless entity @a[team=RainWings,predicate=eof:detect-sneak,distance=..20] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 18
execute as @e[type=#eof:20,scores={FollowRange=5}] at @s unless entity @a[team=RainWings,predicate=eof:detect-sneak,distance=..22] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 20
execute as @e[type=#eof:32,scores={FollowRange=8}] at @s unless entity @a[team=RainWings,predicate=eof:detect-sneak,distance=..34] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 32
execute as @e[type=#eof:35,scores={FollowRange=8}] at @s unless entity @a[team=RainWings,predicate=eof:detect-sneak,distance=..37] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 35
execute as @e[type=#eof:40,scores={FollowRange=10}] at @s unless entity @a[team=RainWings,predicate=eof:detect-sneak,distance=..42] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 40
execute as @e[type=#eof:48,scores={FollowRange=12}] at @s unless entity @a[team=RainWings,predicate=eof:detect-sneak,distance=..50] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 48
execute as @e[type=#eof:64,scores={FollowRange=16}] at @s unless entity @a[team=RainWings,predicate=eof:detect-sneak,distance=..66] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 64
execute as @e[type=#eof:100,scores={FollowRange=25}] at @s unless entity @a[team=RainWings,predicate=eof:detect-sneak,distance=..102] run data modify entity @s Attributes[{Name:"minecraft:generic.follow_range"}].Base set value 100

#Clear Tracked Entity Scores
execute if entity @s[predicate=!eof:detect-sneak] as @e[type=#eof:12,distance=..16] if score @s FollowRange matches 1.. run scoreboard players reset @s FollowRange
execute if entity @s[predicate=!eof:detect-sneak] as @e[type=#eof:16,distance=..20] if score @s FollowRange matches 1.. run scoreboard players reset @s FollowRange
execute if entity @s[predicate=!eof:detect-sneak] as @e[type=#eof:18,distance=..22] if score @s FollowRange matches 1.. run scoreboard players reset @s FollowRange
execute if entity @s[predicate=!eof:detect-sneak] as @e[type=#eof:20,distance=..24] if score @s FollowRange matches 1.. run scoreboard players reset @s FollowRange
execute if entity @s[predicate=!eof:detect-sneak] as @e[type=#eof:32,distance=..36] if score @s FollowRange matches 1.. run scoreboard players reset @s FollowRange
execute if entity @s[predicate=!eof:detect-sneak] as @e[type=#eof:35,distance=..39] if score @s FollowRange matches 1.. run scoreboard players reset @s FollowRange
execute if entity @s[predicate=!eof:detect-sneak] as @e[type=#eof:40,distance=..44] if score @s FollowRange matches 1.. run scoreboard players reset @s FollowRange
execute if entity @s[predicate=!eof:detect-sneak] as @e[type=#eof:48,distance=..52] if score @s FollowRange matches 1.. run scoreboard players reset @s FollowRange
execute if entity @s[predicate=!eof:detect-sneak] as @e[type=#eof:64,distance=..68] if score @s FollowRange matches 1.. run scoreboard players reset @s FollowRange
execute if entity @s[predicate=!eof:detect-sneak] as @e[type=#eof:100,distance=..104] if score @s FollowRange matches 1.. run scoreboard players reset @s FollowRange
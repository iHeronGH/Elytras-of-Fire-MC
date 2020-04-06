#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Get FollowRange
execute at @s as @e[type=#ids-wings-of-fire:12,distance=..16] at @s store result score @s FollowRange run data get entity @s Attributes[{Name:"generic.followRange"}].Base 1
execute at @s as @e[type=#ids-wings-of-fire:16,distance=..20] at @s store result score @s FollowRange run data get entity @s Attributes[{Name:"generic.followRange"}].Base 1
execute at @s as @e[type=#ids-wings-of-fire:18,distance=..22] at @s store result score @s FollowRange run data get entity @s Attributes[{Name:"generic.followRange"}].Base 1
execute at @s as @e[type=#ids-wings-of-fire:20,distance=..24] at @s store result score @s FollowRange run data get entity @s Attributes[{Name:"generic.followRange"}].Base 1
execute at @s as @e[type=#ids-wings-of-fire:32,distance=..36] at @s store result score @s FollowRange run data get entity @s Attributes[{Name:"generic.followRange"}].Base 1
execute at @s as @e[type=#ids-wings-of-fire:35,distance=..39] at @s store result score @s FollowRange run data get entity @s Attributes[{Name:"generic.followRange"}].Base 1
execute at @s as @e[type=#ids-wings-of-fire:40,distance=..44] at @s store result score @s FollowRange run data get entity @s Attributes[{Name:"generic.followRange"}].Base 1
execute at @s as @e[type=#ids-wings-of-fire:48,distance=..52] at @s store result score @s FollowRange run data get entity @s Attributes[{Name:"generic.followRange"}].Base 1
execute at @s as @e[type=#ids-wings-of-fire:64,distance=..68] at @s store result score @s FollowRange run data get entity @s Attributes[{Name:"generic.followRange"}].Base 1
execute at @s as @e[type=#ids-wings-of-fire:100,distance=..104] at @s store result score @s FollowRange run data get entity @s Attributes[{Name:"generic.followRange"}].Base 1

#Set FollowRange
execute at @s[predicate=ids-wings-of-fire:detect-sneak] as @e[type=#ids-wings-of-fire:12,distance=..14] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 3
execute at @s[predicate=ids-wings-of-fire:detect-sneak] as @e[type=#ids-wings-of-fire:16,distance=..18] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 4
execute at @s[predicate=ids-wings-of-fire:detect-sneak] as @e[type=#ids-wings-of-fire:18,distance=..20] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 4
execute at @s[predicate=ids-wings-of-fire:detect-sneak] as @e[type=#ids-wings-of-fire:20,distance=..22] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 5
execute at @s[predicate=ids-wings-of-fire:detect-sneak] as @e[type=#ids-wings-of-fire:32,distance=..34] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 8
execute at @s[predicate=ids-wings-of-fire:detect-sneak] as @e[type=#ids-wings-of-fire:35,distance=..37] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 8
execute at @s[predicate=ids-wings-of-fire:detect-sneak] as @e[type=#ids-wings-of-fire:40,distance=..42] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 10
execute at @s[predicate=ids-wings-of-fire:detect-sneak] as @e[type=#ids-wings-of-fire:48,distance=..50] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 12
execute at @s[predicate=ids-wings-of-fire:detect-sneak] as @e[type=#ids-wings-of-fire:64,distance=..66] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 16
execute at @s[predicate=ids-wings-of-fire:detect-sneak] as @e[type=#ids-wings-of-fire:100,distance=..102] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 25

#Initialize FollowRange by:

	#Distance
execute as @e[type=#ids-wings-of-fire:12,scores={FollowRange=3}] at @s unless entity @a[team=RainWings,distance=..14] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 12
execute as @e[type=#ids-wings-of-fire:16,scores={FollowRange=4}] at @s unless entity @a[team=RainWings,distance=..18] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 16
execute as @e[type=#ids-wings-of-fire:18,scores={FollowRange=4}] at @s unless entity @a[team=RainWings,distance=..20] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 18
execute as @e[type=#ids-wings-of-fire:20,scores={FollowRange=5}] at @s unless entity @a[team=RainWings,distance=..22] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 20
execute as @e[type=#ids-wings-of-fire:32,scores={FollowRange=8}] at @s unless entity @a[team=RainWings,distance=..34] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 32
execute as @e[type=#ids-wings-of-fire:35,scores={FollowRange=8}] at @s unless entity @a[team=RainWings,distance=..37] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 35
execute as @e[type=#ids-wings-of-fire:40,scores={FollowRange=10}] at @s unless entity @a[team=RainWings,distance=..42] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 40
execute as @e[type=#ids-wings-of-fire:48,scores={FollowRange=12}] at @s unless entity @a[team=RainWings,distance=..50] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 48
execute as @e[type=#ids-wings-of-fire:64,scores={FollowRange=16}] at @s unless entity @a[team=RainWings,distance=..66] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 64
execute as @e[type=#ids-wings-of-fire:100,scores={FollowRange=25}] at @s unless entity @a[team=RainWings,distance=..102] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 100

	#Activation
execute as @e[type=#ids-wings-of-fire:12,scores={FollowRange=3}] at @s unless entity @a[team=RainWings,predicate=ids-wings-of-fire:detect-sneak] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 12
execute as @e[type=#ids-wings-of-fire:16,scores={FollowRange=4}] at @s unless entity @a[team=RainWings,predicate=ids-wings-of-fire:detect-sneak] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 16
execute as @e[type=#ids-wings-of-fire:18,scores={FollowRange=4}] at @s unless entity @a[team=RainWings,predicate=ids-wings-of-fire:detect-sneak] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 18
execute as @e[type=#ids-wings-of-fire:20,scores={FollowRange=5}] at @s unless entity @a[team=RainWings,predicate=ids-wings-of-fire:detect-sneak] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 20
execute as @e[type=#ids-wings-of-fire:32,scores={FollowRange=8}] at @s unless entity @a[team=RainWings,predicate=ids-wings-of-fire:detect-sneak] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 32
execute as @e[type=#ids-wings-of-fire:35,scores={FollowRange=8}] at @s unless entity @a[team=RainWings,predicate=ids-wings-of-fire:detect-sneak] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 35
execute as @e[type=#ids-wings-of-fire:40,scores={FollowRange=10}] at @s unless entity @a[team=RainWings,predicate=ids-wings-of-fire:detect-sneak] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 40
execute as @e[type=#ids-wings-of-fire:48,scores={FollowRange=12}] at @s unless entity @a[team=RainWings,predicate=ids-wings-of-fire:detect-sneak] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 48
execute as @e[type=#ids-wings-of-fire:64,scores={FollowRange=16}] at @s unless entity @a[team=RainWings,predicate=ids-wings-of-fire:detect-sneak] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 64
execute as @e[type=#ids-wings-of-fire:100,scores={FollowRange=25}] at @s unless entity @a[team=RainWings,predicate=ids-wings-of-fire:detect-sneak] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 100

#Clear Tracked Entity Scores
execute as @e[type=#ids-wings-of-fire:12] at @s unless entity @a[team=RainWings,distance=..16] run scoreboard players reset @s FollowRange
execute as @e[type=#ids-wings-of-fire:16] at @s unless entity @a[team=RainWings,distance=..20] run scoreboard players reset @s FollowRange
execute as @e[type=#ids-wings-of-fire:18] at @s unless entity @a[team=RainWings,distance=..22] run scoreboard players reset @s FollowRange
execute as @e[type=#ids-wings-of-fire:20] at @s unless entity @a[team=RainWings,distance=..24] run scoreboard players reset @s FollowRange
execute as @e[type=#ids-wings-of-fire:32] at @s unless entity @a[team=RainWings,distance=..36] run scoreboard players reset @s FollowRange
execute as @e[type=#ids-wings-of-fire:35] at @s unless entity @a[team=RainWings,distance=..39] run scoreboard players reset @s FollowRange
execute as @e[type=#ids-wings-of-fire:40] at @s unless entity @a[team=RainWings,distance=..44] run scoreboard players reset @s FollowRange
execute as @e[type=#ids-wings-of-fire:48] at @s unless entity @a[team=RainWings,distance=..52] run scoreboard players reset @s FollowRange
execute as @e[type=#ids-wings-of-fire:64] at @s unless entity @a[team=RainWings,distance=..68] run scoreboard players reset @s FollowRange
execute as @e[type=#ids-wings-of-fire:100] at @s unless entity @a[team=RainWings,distance=..104] run scoreboard players reset @s FollowRange

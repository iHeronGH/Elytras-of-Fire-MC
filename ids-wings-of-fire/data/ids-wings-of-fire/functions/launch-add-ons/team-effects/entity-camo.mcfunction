#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Effect All RainWings
execute at @s as @e[type=#ids-wings-of-fire:hostiles,distance=..40] store result score @s FollowRange run data get entity @s Attributes[{Name:"generic.followRange"}].Base 1
execute at @s[predicate=ids-wings-of-fire:detect-sneak] as @e[type=#ids-wings-of-fire:hostiles,distance=..40] run data modify entity @s Attributes[{Name:"generic.followRange"}].Base set value 8
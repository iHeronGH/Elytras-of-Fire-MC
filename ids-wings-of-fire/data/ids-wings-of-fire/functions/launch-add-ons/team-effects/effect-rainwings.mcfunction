#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Effect All RainWings
effect give @e[type=player,team=RainWings] minecraft:jump_boost 1 0 true
effect give @e[type=player,team=RainWings,predicate=!ids-wings-of-fire:detect-sneak] minecraft:speed 1 1 true
effect give @e[type=player,team=RainWings,predicate=ids-wings-of-fire:detect-sneak] minecraft:speed 1 2 true
effect give @e[type=player,team=RainWings,predicate=ids-wings-of-fire:detect-sneak,nbt={OnGround:1b}] minecraft:invisibility 1 0 true

#Clear Invisibility
effect clear @e[type=player,team=RainWings,nbt={OnGround:0b}] minecraft:invisibility
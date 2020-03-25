#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Effect All RainWings
effect give @s jump_boost 1 0 true
execute if entity @s[predicate=!ids-wings-of-fire:detect-sneak] run effect give @s speed 1 1 true
execute if entity @s[predicate=ids-wings-of-fire:detect-sneak] run effect give @s speed 1 2 true
execute if entity @s[predicate=ids-wings-of-fire:detect-sneak,nbt={OnGround:1b}] run effect give @s invisibility 1 0 true
execute if entity @s[nbt={OnGround:0b,ActiveEffects:[{Id:14b}]}] run effect clear @s invisibility
execute if entity @s[predicate=!ids-wings-of-fire:detect-sneak,nbt={ActiveEffects:[{Id:14b}]}] run effect clear @s invisibility
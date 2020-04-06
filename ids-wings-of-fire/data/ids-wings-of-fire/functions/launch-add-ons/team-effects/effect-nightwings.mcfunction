#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Effect All NightWings
effect give @s strength 1 0 true
effect give @s night_vision 1000000 0 true
execute if entity @s[predicate=ids-wings-of-fire:check-sunrise-to-sunset] run effect give @s speed 1 1 true
execute unless entity @s[predicate=ids-wings-of-fire:check-sunrise-to-sunset] run effect clear @s speed
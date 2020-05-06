#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Effect All NightWings
effect give @s strength 1 0 true
effect give @s night_vision 11 0 true
execute if entity @s[predicate=ids-wings-of-fire:check-sunrise-to-sunset] run effect give @s speed 1 1 true
execute unless entity @s[predicate=ids-wings-of-fire:check-sunrise-to-sunset] run effect clear @s speed

#Premonition Effect
execute if entity @s[nbt={SelectedItem:{tag:{sightactive:1}}},scores={Attack=1..}] unless entity @s[scores={premonActive=1..}] run scoreboard players set @s premonActive 400
execute if entity @s[scores={premonActive=400}] run title @s actionbar {"text":"Premonition is now active!","color":"gray","bold":true}
execute if entity @s[scores={premonActive=200..}] run function ids-wings-of-fire:loop-required/entity-ownership
execute if entity @s[scores={premonActive=200}] run title @s actionbar {"text":"Premonition has entered a 10s cooldown!","color":"gray","bold":true}
execute if entity @s[scores={premonActive=1..}] run scoreboard players remove @s premonActive 1
execute if entity @s[scores={premonActive=1}] run title @s actionbar {"text":"Premonition is no longer in cooldown!","color":"gray","bold":true}
execute if entity @s[scores={Attack=1..}] run scoreboard players set @s Attack 0
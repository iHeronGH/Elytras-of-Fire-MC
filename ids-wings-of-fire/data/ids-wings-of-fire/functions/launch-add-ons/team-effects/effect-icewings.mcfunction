#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Effect All IceWings
effect give @s strength 1 1 true

#Speed 3 / 2 on Snow / Ice
execute at @s if block ~ ~-0.51 ~ snow_block run effect give @s speed 1 2 true
execute at @s if block ~ ~ ~ snow run effect give @s speed 1 2 true
execute at @s if block ~ ~-0.51 ~ #ice run effect give @s speed 1 1 true

#Icicle Incision Effect
execute if entity @s[nbt={SelectedItem:{tag:{incisionactive:1}}},scores={Attack=1..}] at @s run effect give @e[nbt=!{HurtTime:0s},nbt=!{ActiveEffects:[{id:"poison"}]},distance=0.1..4] poison 1 2 true
execute if entity @s[scores={Attack=1..}] run scoreboard players set @s Attack 0
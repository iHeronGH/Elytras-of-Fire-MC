#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Effect All SandWings
effect give @s strength 1 0 true
execute at @s unless block ~ ~-0.51 ~ #ids-wings-of-fire:families/desert/desert run effect give @s speed 1 0 true
execute at @s unless block ~ ~-0.51 ~ #ids-wings-of-fire:families/desert/red-desert run effect give @s speed 1 0 true
execute at @s if block ~ ~-0.51 ~ #ids-wings-of-fire:families/desert/desert run effect give @s speed 1 2 true
execute at @s if block ~ ~-0.51 ~ #ids-wings-of-fire:families/desert/red-desert run effect give @s speed 1 2 true

#Toxin Slash Effect
execute if entity @s[nbt={SelectedItem:{tag:{toxinactive:1}}},scores={Attack=1..}] at @s run effect give @e[nbt=!{HurtTime:0s},nbt=!{ActiveEffects:[{id:"poison"}]},distance=0.1..4] poison 4 0 true
execute if entity @s[scores={Attack=1..}] run scoreboard players set @s Attack 0
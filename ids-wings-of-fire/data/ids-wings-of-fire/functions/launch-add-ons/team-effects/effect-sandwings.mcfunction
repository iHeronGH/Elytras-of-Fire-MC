#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Effect All SandWings
effect give @a[team=SandWings] strength 1 0 true
effect clear @a[team=SandWings,tag=nv] night_vision
tag @a[team=SandWings,tag=nv] remove nv
execute as @a[team=SandWings] at @s unless block ~ ~-0.51 ~ #ids-wings-of-fire:families/desert/desert run effect give @s speed 1 0 true
execute as @a[team=SandWings] at @s unless block ~ ~-0.51 ~ #ids-wings-of-fire:families/desert/red-desert run effect give @s speed 1 0 true
execute as @a[team=SandWings] at @s if block ~ ~-0.51 ~ #ids-wings-of-fire:families/desert/desert run effect give @s speed 1 2 true
execute as @a[team=SandWings] at @s if block ~ ~-0.51 ~ #ids-wings-of-fire:families/desert/red-desert run effect give @s speed 1 2 true

#Toxin Slash Effect
execute as @a[team=SandWings,nbt={SelectedItem:{tag:{toxinactive:1}}},scores={Attack=1..}] at @s run effect give @e[nbt=!{HurtTime:0s},nbt=!{ActiveEffects:[{Id:19b}]},distance=0.1..4] poison 4 0 true
execute as @a[team=SandWings,scores={Attack=1..}] run scoreboard players set @s Attack 0
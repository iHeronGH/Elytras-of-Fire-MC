#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Effect All SandWings
effect give @e[type=player,team=SandWings] minecraft:strength 1 0 true

execute as @e[type=player,team=SandWings] at @s unless block ~ ~-0.5 ~ #ids-wings-of-fire:families/desert/desert run effect give @s minecraft:speed 1 0 true
execute as @e[type=player,team=SandWings] at @s if block ~ ~-0.5 ~ #ids-wings-of-fire:families/desert/desert run effect give @s minecraft:speed 1 2 true

execute as @e[type=player,team=SandWings] at @s unless block ~ ~-0.5 ~ #ids-wings-of-fire:families/desert/red-desert run effect give @s minecraft:speed 1 0 true
execute as @e[type=player,team=SandWings] at @s if block ~ ~-0.5 ~ #ids-wings-of-fire:families/desert/red-desert run effect give @s minecraft:speed 1 2 true

#Toxin Slash Effect
execute as @e[type=player,team=SandWings,nbt={SelectedItem:{tag:{toxinactive:1}}},scores={Attack=1..}] at @s run effect give @e[nbt=!{HurtTime:0s},nbt=!{ActiveEffects:[{id:"poison"}]},distance=0.175..4] minecraft:poison 4 0 true
scoreboard players set @e[type=player,scores={Attack=1..}] Attack 0
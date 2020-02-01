#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Effect Entities
effect give @e[type=player,tag=!CoolDown2,tag=StrikeActive,nbt={SelectedItem:{tag:{sharpedge:1}}}] minecraft:strength 8 2 true
execute as @e[type=player,tag=!CoolDown2,tag=StrikeActive,nbt={SelectedItem:{tag:{sharpedge:1}}}] at @s unless block ~ ~-0.5 ~ #minecraft:ice unless block ~ ~-0.5 ~ minecraft:snow_block unless block ~ ~ ~ minecraft:snow run effect give @s minecraft:speed 8 0 true

#Effect on Snow/Ice
execute as @e[type=player,tag=!CoolDown2,tag=StrikeActive,nbt={SelectedItem:{tag:{sharpedge:1}}}] at @s if block ~ ~-0.5 ~ #minecraft:ice run effect give @s minecraft:speed 8 2 true
execute as @e[type=player,tag=!CoolDown2,tag=StrikeActive,nbt={SelectedItem:{tag:{sharpedge:1}}}] at @s if block ~ ~-0.5 ~ minecraft:snow_block run effect give @s minecraft:speed 8 2 true
execute as @e[type=player,tag=!CoolDown2,tag=StrikeActive,nbt={SelectedItem:{tag:{sharpedge:1}}}] at @s if block ~ ~ ~ minecraft:snow run effect give @s minecraft:speed 8 2 true

#Remove Tag
tag @e[type=player,tag=StrikeActive] add CoolDown2
function ids-wings-of-fire:launch-add-ons/announce-cooldown-two
tag @e[type=player,tag=StrikeActive] add CoolDownActive2
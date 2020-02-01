#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Effect Entities
effect give @e[type=player,tag=!CoolDown2,tag=GrowthActive,nbt={SelectedItem:{tag:{fertilize:1}}}] minecraft:resistance 8 1 true
execute as @e[type=player,tag=!CoolDown2,tag=GrowthActive,nbt={SelectedItem:{tag:{fertilize:1}}}] at @s run effect give @e[distance=0.75..5] minecraft:slowness 8 0 true
execute as @e[type=player,tag=!CoolDown2,tag=GrowthActive,nbt={SelectedItem:{tag:{fertilize:1}}}] at @s run effect give @e[distance=0.75..5] minecraft:weakness 8 2 true

#Remove Tag
tag @e[type=player,tag=GrowthActive] add CoolDown2
function ids-wings-of-fire:launch-add-ons/announce-cooldown-two
tag @e[type=player,tag=GrowthActive] add CoolDownActive2
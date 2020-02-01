#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Effect Entities
effect give @e[type=player,tag=!CoolDown2,tag=StormActive,nbt={SelectedItem:{tag:{sandstrike:1}}}] minecraft:strength 8 1 true
effect give @e[type=player,tag=!CoolDown2,tag=StormActive,nbt={SelectedItem:{tag:{sandstrike:1}}}] minecraft:speed 8 2 true
execute as @e[type=player,tag=!CoolDown2,tag=StormActive,nbt={SelectedItem:{tag:{sandstrike:1}}}] at @s run effect give @e[distance=0.9..5] minecraft:slowness 8 0 true

#Remove Tag
tag @e[type=player,tag=StormActive] add CoolDown2
function ids-wings-of-fire:launch-add-ons/announce-cooldown-two
tag @e[type=player,tag=StormActive] add CoolDownActive2
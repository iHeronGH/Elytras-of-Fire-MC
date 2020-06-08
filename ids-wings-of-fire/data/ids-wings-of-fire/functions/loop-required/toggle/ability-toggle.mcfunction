#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w
tag @s add toggSwitch
execute if entity @s[tag=toggSwitch,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/toggle/switch-off
execute if entity @s[tag=toggSwitch,tag=abilToggOff] run function ids-wings-of-fire:loop-required/toggle/switch-on
scoreboard players set @s abilities 0
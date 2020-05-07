#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Effect All MudWings
effect give @s strength 1 1 true
effect give @s slowness 1 0 true
effect clear @s[tag=nv] night_vision
tag @s[tag=nv] remove nv

#Mud Swipe Effect
execute if entity @s[nbt={SelectedItem:{tag:{swipeactive:1}}},scores={Attack=1..}] unless entity @s[scores={mudSwipe=1..}] run scoreboard players set @s mudSwipe 160
execute if entity @s[nbt={SelectedItem:{tag:{swipeactive:1}}},scores={Attack=1..,mudSwipe=160}] at @s run effect give @e[nbt=!{HurtTime:0s},distance=0.1..4] slowness 4 0 true
execute if entity @s[nbt={SelectedItem:{tag:{swipeactive:1}}},scores={Attack=1..,mudSwipe=160}] at @s run effect give @e[nbt=!{HurtTime:0s},distance=0.1..4] weakness 4 0 true
execute if entity @s[scores={Attack=1..}] run scoreboard players set @s Attack 0
execute if entity @s[scores={mudSwipe=1..}] run scoreboard players remove @s mudSwipe 1
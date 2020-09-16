#Effect All MudWings
effect give @a[team=MudWings] strength 1 1 true
effect give @a[team=MudWings] slowness 1 0 true
effect clear @a[team=MudWings,tag=nv] night_vision
tag @a[team=MudWings,tag=nv] remove nv

#Mud Swipe Effect
execute as @a[team=MudWings,nbt={SelectedItem:{tag:{swipeactive:1}}},scores={Attack=1..}] unless entity @s[scores={mudSwipe=1..}] run scoreboard players set @s mudSwipe 160
execute as @a[team=MudWings,nbt={SelectedItem:{tag:{swipeactive:1}}},scores={Attack=1..,mudSwipe=160}] at @s run effect give @e[nbt=!{HurtTime:0s},distance=0.1..4] slowness 4 0 true
execute as @a[team=MudWings,nbt={SelectedItem:{tag:{swipeactive:1}}},scores={Attack=1..,mudSwipe=160}] at @s run effect give @e[nbt=!{HurtTime:0s},distance=0.1..4] weakness 4 0 true
execute as @a[team=MudWings,scores={Attack=1..}] run scoreboard players set @s Attack 0
execute as @a[team=MudWings,scores={mudSwipe=1..}] run scoreboard players remove @s mudSwipe 1
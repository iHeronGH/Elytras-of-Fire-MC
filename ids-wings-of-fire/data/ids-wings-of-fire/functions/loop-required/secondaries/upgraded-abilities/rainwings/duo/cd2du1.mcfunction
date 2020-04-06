#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Effect Entities
execute if entity @s[tag=!CoolDown2] run effect give @s resistance 7 1 true
execute at @s[tag=!CoolDown2] run effect give @e[distance=0.1..5] slowness 7 0 true
execute at @s[tag=!CoolDown2] run effect give @e[distance=0.1..5] weakness 7 2 true

#Enter Cooldown
tag @s add CoolDown2
execute as @s[tag=!CoolDownActive2] run function ids-wings-of-fire:launch-add-ons/announce-cooldown-two
tag @s add CoolDownActive2
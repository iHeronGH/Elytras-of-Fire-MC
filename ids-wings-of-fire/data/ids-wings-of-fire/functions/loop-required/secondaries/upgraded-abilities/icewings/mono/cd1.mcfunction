#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Effect Entities
execute if entity @s[tag=!CoolDown2] run effect give @s strength 6 2 true
execute at @s[tag=!CoolDown2] unless block ~ ~-0.51 ~ #ice unless block ~ ~-0.51 ~ snow_block unless block ~ ~ ~ snow run effect give @s speed 6 0 true

#Effect on Snow/Ice
execute at @s[tag=!CoolDown2] if block ~ ~-0.5 ~ #ice run effect give @s speed 6 1 true
execute at @s[tag=!CoolDown2] if block ~ ~-0.5 ~ snow_block run effect give @s speed 6 2 true
execute at @s[tag=!CoolDown2] if block ~ ~ ~ snow run effect give @s speed 6 2 true

#Enter Cooldown
tag @s add CoolDown2
execute as @s[tag=!CoolDownActive2] run function ids-wings-of-fire:launch-add-ons/announce-cooldown-two
tag @s add CoolDownActive2
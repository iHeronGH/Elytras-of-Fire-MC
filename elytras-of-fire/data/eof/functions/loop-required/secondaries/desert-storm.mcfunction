#Effect Entities
execute if entity @s[tag=!CoolDown2] run effect give @s strength 6 1 true
execute if entity @s[tag=!CoolDown2] run effect give @s speed 6 2 true
execute at @s[tag=!CoolDown2] run effect give @e[distance=0.1..5] blindness 6 0 true

#Enter Cooldown
tag @s add CoolDown2
execute as @s[tag=!CoolDownActive2] run function eof:launch-add-ons/announce-cooldown-two
tag @s add CoolDownActive2
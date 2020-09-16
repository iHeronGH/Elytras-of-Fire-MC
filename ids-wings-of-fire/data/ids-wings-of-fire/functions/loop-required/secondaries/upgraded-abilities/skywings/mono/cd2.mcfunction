#Effect Entities
execute if entity @s[tag=!CoolDown2] run effect give @s strength 6 2 true
execute if entity @s[tag=!CoolDown2] run effect give @s resistance 6 0 true

#Enter Cooldown
tag @s add CoolDown2
execute as @s[tag=!CoolDownActive2] run function ids-wings-of-fire:launch-add-ons/announce-cooldown-two
tag @s add CoolDownActive2
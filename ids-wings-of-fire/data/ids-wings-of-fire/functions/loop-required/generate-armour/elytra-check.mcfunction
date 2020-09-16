#Check for Armours
execute if entity @a[tag=isFlying] run function ids-wings-of-fire:launch-add-ons/apply-armours/scales-to-wings
execute if entity @a[tag=!isFlying] run function ids-wings-of-fire:launch-add-ons/apply-armours/wings-to-scales
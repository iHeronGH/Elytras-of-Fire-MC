#Wings of Fire Datapack for Minecraft Java 1.16.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Enter Cooldown Ability 1
tag @e[type=player,tag=CoolDownActive1] remove CoolDownActive1

title @a[tag=!CoolDownActive1,tag=CoolDown1,tag=FlameActive] actionbar {"text":"Flame Breath is no longer in cooldown!","bold":true,"color":"red"}
title @a[tag=!CoolDownActive1,tag=CoolDown1,tag=FrostActive] actionbar {"text":"Frost Breath is no longer in cooldown!","bold":true,"color":"aqua"}
title @a[tag=!CoolDownActive1,tag=CoolDown1,tag=VenomActive] actionbar {"text":"Venom Shot is no longer in cooldown!","bold":true,"color":"white"}
title @a[tag=!CoolDownActive1,tag=CoolDown1,tag=WaterActive] actionbar {"text":"Tidal Wave is no longer in cooldown!","bold":true,"color":"aqua"}

tag @e[type=player,tag=FlameActive] remove FlameActive
tag @e[type=player,tag=FrostActive] remove FrostActive
tag @e[type=player,tag=VenomActive] remove VenomActive
tag @e[type=player,tag=WaterActive] remove WaterActive

tag @e[type=player,tag=CoolDown1] remove CoolDown1
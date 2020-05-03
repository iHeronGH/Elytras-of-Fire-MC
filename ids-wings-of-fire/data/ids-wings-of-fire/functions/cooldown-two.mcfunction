#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Enter Cooldown Ability 2
tag @e[type=player,tag=CoolDownActive2] remove CoolDownActive2

title @a[tag=!CoolDownActive2,tag=CoolDown2,tag=SurgeActive] actionbar {"text":"Sky Surge is no longer in cooldown!","bold":true,"color":"dark_red"}
title @a[tag=!CoolDownActive2,tag=CoolDown2,tag=StrikeActive] actionbar {"text":"Serrated Strike is no longer in cooldown!","bold":true,"color":"gray"}
title @a[tag=!CoolDownActive2,tag=CoolDown2,tag=GrowthActive] actionbar {"text":"Overgrowth is no longer in cooldown!","bold":true,"color":"dark_green"}
title @a[tag=!CoolDownActive2,tag=CoolDown2,tag=ShockActive] actionbar {"text":"Terrashock no longer in cooldown!","bold":true,"color":"gold"}
title @a[tag=!CoolDownActive2,tag=CoolDown2,tag=StormActive] actionbar {"text":"Desert Storm is no longer in cooldown!","bold":true,"color":"yellow"}

tag @e[type=player,tag=SurgeActive] remove SurgeActive
tag @e[type=player,tag=StrikeActive] remove StrikeActive
tag @e[type=player,tag=GrowthActive] remove GrowthActive
tag @e[type=player,tag=ShockActive] remove ShockActive
tag @e[type=player,tag=StormActive] remove StormActive

tag @e[type=player,tag=CoolDown2] remove CoolDown2
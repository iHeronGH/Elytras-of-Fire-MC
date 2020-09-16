#Wings of Fire Datapack for Minecraft Java 1.16.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Enter Cooldown Ability 2
tag @e[type=player,tag=CoolDownActive2] remove CoolDownActive2

title @a[team=SkyWings,tag=!CoolDownActive2,tag=CoolDown2,tag=SurgeActive] actionbar {"text":"Sky Surge is no longer in cooldown!","bold":true,"color":"dark_red"}
title @a[team=IceWings,tag=!CoolDownActive2,tag=CoolDown2,tag=StrikeActive] actionbar {"text":"Serrated Strike is no longer in cooldown!","bold":true,"color":"gray"}
title @a[team=RainWings,tag=!CoolDownActive2,tag=CoolDown2,tag=GrowthActive] actionbar {"text":"Overgrowth is no longer in cooldown!","bold":true,"color":"dark_green"}
title @a[team=MudWings,tag=!CoolDownActive2,tag=CoolDown2,tag=ShockActive] actionbar {"text":"Terrashock no longer in cooldown!","bold":true,"color":"gold"}
title @a[team=SandWings,tag=!CoolDownActive2,tag=CoolDown2,tag=StormActive] actionbar {"text":"Desert Storm is no longer in cooldown!","bold":true,"color":"yellow"}

tag @e[type=player,team=SkyWings,tag=SurgeActive] remove SurgeActive
tag @e[type=player,team=IceWings,tag=StrikeActive] remove StrikeActive
tag @e[type=player,team=RainWings,tag=GrowthActive] remove GrowthActive
tag @e[type=player,team=MudWings,tag=ShockActive] remove ShockActive
tag @e[type=player,team=SandWings,tag=StormActive] remove StormActive

tag @e[type=player,tag=CoolDown2] remove CoolDown2
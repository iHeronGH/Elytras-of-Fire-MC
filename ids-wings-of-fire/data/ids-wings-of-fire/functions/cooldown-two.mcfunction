#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Enter Cooldown Ability 2
execute if entity @e[type=player,tag=CoolDownActive2] run tag @e[type=player,tag=CoolDownActive2] remove CoolDownActive2
execute if entity @e[type=player,tag=!CoolDownActive2,tag=CoolDown2,tag=SurgeActive] run title @e[type=player,tag=!CoolDownActive2,tag=CoolDown2,tag=SurgeActive] actionbar {"text":"You are no longer in cooldown!","bold":true,"color":"dark_red"}
execute if entity @e[type=player,tag=!CoolDownActive2,tag=CoolDown2,tag=StrikeActive] run title @e[type=player,tag=!CoolDownActive2,tag=CoolDown2,tag=StrikeActive] actionbar {"text":"You are no longer in cooldown!","bold":true,"color":"gray"}
execute if entity @e[type=player,tag=!CoolDownActive2,tag=CoolDown2,tag=GrowthActive] run title @e[type=player,tag=!CoolDownActive2,tag=CoolDown2,tag=GrowthActive] actionbar {"text":"You are no longer in cooldown!","bold":true,"color":"dark_green"}
execute if entity @e[type=player,tag=!CoolDownActive2,tag=CoolDown2,tag=ShockActive] run title @e[type=player,tag=!CoolDownActive2,tag=CoolDown2,tag=ShockActive] actionbar {"text":"You are no longer in cooldown!","bold":true,"color":"gold"}
execute if entity @e[type=player,tag=!CoolDownActive2,tag=CoolDown2,tag=StormActive] run title @e[type=player,tag=!CoolDownActive2,tag=CoolDown2,tag=StormActive] actionbar {"text":"You are no longer in cooldown!","bold":true,"color":"yellow"}
execute if entity @e[type=player,tag=CoolDown2] run tag @e[type=player,tag=CoolDown2] remove CoolDown2

execute if entity @e[type=player,tag=SurgeActive] run tag @e[type=player,tag=SurgeActive] remove SurgeActive
execute if entity @e[type=player,tag=StrikeActive] run tag @e[type=player,tag=StrikeActive] remove StrikeActive
execute if entity @e[type=player,tag=GrowthActive] run tag @e[type=player,tag=GrowthActive] remove GrowthActive
execute if entity @e[type=player,tag=ShockActive] run tag @e[type=player,tag=ShockActive] remove ShockActive
execute if entity @e[type=player,tag=StormActive] run tag @e[type=player,tag=StormActive] remove StormActive
#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Enter Cooldown Ability 1
execute if entity @e[type=player,tag=CoolDownActive1] run tag @e[type=player,tag=CoolDownActive1] remove CoolDownActive1
execute if entity @e[type=player,tag=!CoolDownActive1,tag=CoolDown1,tag=FlameActive] run title @e[type=player,tag=!CoolDownActive1,tag=CoolDown1,tag=FlameActive] actionbar {"text":"You are no longer in cooldown!","bold":true,"color":"red"}
execute if entity @e[type=player,tag=!CoolDownActive1,tag=CoolDown1,tag=FrostActive] run title @e[type=player,tag=!CoolDownActive1,tag=CoolDown1,tag=FrostActive] actionbar {"text":"You are no longer in cooldown!","bold":true,"color":"aqua"}
execute if entity @e[type=player,tag=!CoolDownActive1,tag=CoolDown1,tag=VenomActive] run title @e[type=player,tag=!CoolDownActive1,tag=CoolDown1,tag=VenomActive] actionbar {"text":"You are no longer in cooldown!","bold":true,"color":"white"}
execute if entity @e[type=player,tag=!CoolDownActive1,tag=CoolDown1,tag=WaterActive] run title @e[type=player,tag=!CoolDownActive1,tag=CoolDown1,tag=WaterActive] actionbar {"text":"You are no longer in cooldown!","bold":true,"color":"aqua"}
execute if entity @e[type=player,tag=CoolDown1] run tag @e[type=player,tag=CoolDown1] remove CoolDown1

execute if entity @e[type=player,tag=FlameActive] run tag @e[type=player,tag=FlameActive] remove FlameActive
execute if entity @e[type=player,tag=FrostActive] run tag @e[type=player,tag=FrostActive] remove FrostActive
execute if entity @e[type=player,tag=VenomActive] run tag @e[type=player,tag=VenomActive] remove VenomActive
execute if entity @e[type=player,tag=WaterActive] run tag @e[type=player,tag=WaterActive] remove WaterActive
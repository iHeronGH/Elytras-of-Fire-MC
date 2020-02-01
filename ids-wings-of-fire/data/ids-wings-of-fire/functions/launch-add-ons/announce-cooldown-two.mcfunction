#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Announce Cooldown 2

	#Sky Surge
execute if entity @e[type=player,tag=SurgeActive,tag=!CoolDownActive2] run schedule function ids-wings-of-fire:cooldown-two 400t append
execute if entity @e[type=player,tag=!CoolDownActive2,tag=SurgeActive,nbt={SelectedItem:{tag:{adrenaline:1}}}] run title @e[type=player,tag=!CoolDownActive2,tag=SurgeActive,nbt={SelectedItem:{tag:{adrenaline:1}}}] actionbar {"text":"You have entered a 20s cooldown!","bold":true,"color":"dark_red"}

	#Serrated Strike
execute if entity @e[type=player,tag=StrikeActive,tag=!CoolDownActive2] run schedule function ids-wings-of-fire:cooldown-two 400t append
execute if entity @e[type=player,tag=!CoolDownActive2,tag=StrikeActive,nbt={SelectedItem:{tag:{sharpedge:1}}}] run title @e[type=player,tag=!CoolDownActive2,tag=StrikeActive,nbt={SelectedItem:{tag:{sharpedge:1}}}] actionbar {"text":"You have entered a 20s cooldown!","bold":true,"color":"gray"}

	#Overgrowth
execute if entity @e[type=player,tag=GrowthActive,tag=!CoolDownActive2] run schedule function ids-wings-of-fire:cooldown-two 400t append
execute if entity @e[type=player,tag=!CoolDownActive2,tag=GrowthActive,nbt={SelectedItem:{tag:{fertilize:1}}}] run title @e[type=player,tag=!CoolDownActive2,tag=GrowthActive,nbt={SelectedItem:{tag:{fertilize:1}}}] actionbar {"text":"You have entered a 20s cooldown!","bold":true,"color":"dark_green"}

	#Terrashock
execute if entity @e[type=player,tag=ShockActive,tag=!CoolDownActive2] run schedule function ids-wings-of-fire:cooldown-two 400t append
execute if entity @e[type=player,tag=!CoolDownActive2,tag=ShockActive,nbt={SelectedItem:{tag:{crumble:1}}}] run title @e[type=player,tag=!CoolDownActive2,tag=ShockActive,nbt={SelectedItem:{tag:{crumble:1}}}] actionbar {"text":"You have entered a 20s cooldown!","bold":true,"color":"gold"}

	#Desert Storm
execute if entity @e[type=player,tag=StormActive,tag=!CoolDownActive2] run schedule function ids-wings-of-fire:cooldown-two 400t append
execute if entity @e[type=player,tag=!CoolDownActive2,tag=StormActive,nbt={SelectedItem:{tag:{sandstrike:1}}}] run title @e[type=player,tag=!CoolDownActive2,tag=StormActive,nbt={SelectedItem:{tag:{sandstrike:1}}}] actionbar {"text":"You have entered a 20s cooldown!","bold":true,"color":"yellow"}
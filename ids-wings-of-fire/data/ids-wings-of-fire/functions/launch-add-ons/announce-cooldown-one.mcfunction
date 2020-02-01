#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Announce Cooldown 1

	#Flame Breath
execute if entity @e[type=player,tag=FlameActive,tag=!CoolDownActive1,nbt=!{SelectedItem:{tag:{cooldown1:1,cooldown2:1,cooldown3:1}}}] run schedule function ids-wings-of-fire:cooldown-one 160t append
execute if entity @e[type=player,tag=FlameActive,tag=!CoolDownActive1,nbt={SelectedItem:{tag:{cooldown1:1}}}] run schedule function ids-wings-of-fire:cooldown-one 150t append
execute if entity @e[type=player,tag=FlameActive,tag=!CoolDownActive1,nbt={SelectedItem:{tag:{cooldown2:1}}}] run schedule function ids-wings-of-fire:cooldown-one 140t append
execute if entity @e[type=player,tag=FlameActive,tag=!CoolDownActive1,nbt={SelectedItem:{tag:{cooldown3:1}}}] run schedule function ids-wings-of-fire:cooldown-one 130t append

execute if entity @e[type=player,tag=!CoolDownActive1,tag=FlameActive,nbt=!{SelectedItem:{tag:{cooldown1:1,cooldown2:1,cooldown3:1}}}] run title @e[type=player,tag=!CoolDownActive1,tag=FlameActive,nbt={SelectedItem:{tag:{flamebreath:1}}},nbt=!{SelectedItem:{tag:{cooldown1:1,cooldown2:1,cooldown3:1}}}] actionbar {"text":"You have entered an 8s cooldown!","bold":true,"color":"red"}
execute if entity @e[type=player,tag=!CoolDownActive1,tag=FlameActive,nbt={SelectedItem:{tag:{cooldown1:1}}}] run title @e[type=player,tag=!CoolDownActive1,tag=FlameActive,nbt={SelectedItem:{tag:{flamebreath:1,cooldown1:1}}}] actionbar {"text":"You have entered a 7.5s cooldown!","bold":true,"color":"red"}
execute if entity @e[type=player,tag=!CoolDownActive1,tag=FlameActive,nbt={SelectedItem:{tag:{cooldown2:1}}}] run title @e[type=player,tag=!CoolDownActive1,tag=FlameActive,nbt={SelectedItem:{tag:{flamebreath:1,cooldown2:1}}}] actionbar {"text":"You have entered a 7s cooldown!","bold":true,"color":"red"}
execute if entity @e[type=player,tag=!CoolDownActive1,tag=FlameActive,nbt={SelectedItem:{tag:{cooldown3:1}}}] run title @e[type=player,tag=!CoolDownActive1,tag=FlameActive,nbt={SelectedItem:{tag:{flamebreath:1,cooldown3:1}}}] actionbar {"text":"You have entered a 6.5s cooldown!","bold":true,"color":"red"}



	#Frost Breath
execute if entity @e[type=player,tag=FrostActive,tag=!CoolDownActive1,nbt=!{SelectedItem:{tag:{cooldown1:1,cooldown2:1,cooldown3:1}}}] run schedule function ids-wings-of-fire:cooldown-one 160t append
execute if entity @e[type=player,tag=FrostActive,tag=!CoolDownActive1,nbt={SelectedItem:{tag:{cooldown1:1}}}] run schedule function ids-wings-of-fire:cooldown-one 150t append
execute if entity @e[type=player,tag=FrostActive,tag=!CoolDownActive1,nbt={SelectedItem:{tag:{cooldown2:1}}}] run schedule function ids-wings-of-fire:cooldown-one 140t append
execute if entity @e[type=player,tag=FrostActive,tag=!CoolDownActive1,nbt={SelectedItem:{tag:{cooldown3:1}}}] run schedule function ids-wings-of-fire:cooldown-one 130t append

execute if entity @e[type=player,tag=!CoolDownActive1,tag=FrostActive,nbt=!{SelectedItem:{tag:{cooldown1:1,cooldown2:1,cooldown3:1}}}] run title @e[type=player,tag=!CoolDownActive1,tag=FrostActive,nbt={SelectedItem:{tag:{frostbreath:1}}},nbt=!{SelectedItem:{tag:{cooldown1:1,cooldown2:1,cooldown3:1}}}] actionbar {"text":"You have entered an 8s cooldown!","bold":true,"color":"aqua"}
execute if entity @e[type=player,tag=!CoolDownActive1,tag=FrostActive,nbt={SelectedItem:{tag:{cooldown1:1}}}] run title @e[type=player,tag=!CoolDownActive1,tag=FrostActive,nbt={SelectedItem:{tag:{frostbreath:1,cooldown1:1}}}] actionbar {"text":"You have entered a 7.5s cooldown!","bold":true,"color":"aqua"}
execute if entity @e[type=player,tag=!CoolDownActive1,tag=FrostActive,nbt={SelectedItem:{tag:{cooldown2:1}}}] run title @e[type=player,tag=!CoolDownActive1,tag=FrostActive,nbt={SelectedItem:{tag:{frostbreath:1,cooldown2:1}}}] actionbar {"text":"You have entered a 7s cooldown!","bold":true,"color":"aqua"}
execute if entity @e[type=player,tag=!CoolDownActive1,tag=FrostActive,nbt={SelectedItem:{tag:{cooldown3:1}}}] run title @e[type=player,tag=!CoolDownActive1,tag=FrostActive,nbt={SelectedItem:{tag:{frostbreath:1,cooldown3:1}}}] actionbar {"text":"You have entered a 6.5s cooldown!","bold":true,"color":"aqua"}



	#Venom Shot
execute if entity @e[type=player,tag=VenomActive,tag=!CoolDownActive1,nbt=!{SelectedItem:{tag:{cooldown1:1,cooldown2:1,cooldown3:1}}}] run schedule function ids-wings-of-fire:cooldown-one 160t append
execute if entity @e[type=player,tag=VenomActive,tag=!CoolDownActive1,nbt={SelectedItem:{tag:{cooldown1:1}}}] run schedule function ids-wings-of-fire:cooldown-one 150t append
execute if entity @e[type=player,tag=VenomActive,tag=!CoolDownActive1,nbt={SelectedItem:{tag:{cooldown2:1}}}] run schedule function ids-wings-of-fire:cooldown-one 140t append
execute if entity @e[type=player,tag=VenomActive,tag=!CoolDownActive1,nbt={SelectedItem:{tag:{cooldown3:1}}}] run schedule function ids-wings-of-fire:cooldown-one 130t append

execute if entity @e[type=player,tag=!CoolDownActive1,tag=VenomActive,nbt=!{SelectedItem:{tag:{cooldown1:1,cooldown2:1,cooldown3:1}}}] run title @e[type=player,tag=!CoolDownActive1,tag=VenomActive,nbt={SelectedItem:{tag:{venomshot:1}}},nbt=!{SelectedItem:{tag:{cooldown1:1,cooldown2:1,cooldown3:1}}}] actionbar {"text":"You have entered an 8s cooldown!","bold":true,"color":"white"}
execute if entity @e[type=player,tag=!CoolDownActive1,tag=VenomActive,nbt={SelectedItem:{tag:{cooldown1:1}}}] run title @e[type=player,tag=!CoolDownActive1,tag=VenomActive,nbt={SelectedItem:{tag:{venomshot:1,cooldown1:1}}}] actionbar {"text":"You have entered a 7.5s cooldown!","bold":true,"color":"white"}
execute if entity @e[type=player,tag=!CoolDownActive1,tag=VenomActive,nbt={SelectedItem:{tag:{cooldown2:1}}}] run title @e[type=player,tag=!CoolDownActive1,tag=VenomActive,nbt={SelectedItem:{tag:{venomshot:1,cooldown2:1}}}] actionbar {"text":"You have entered a 7s cooldown!","bold":true,"color":"white"}
execute if entity @e[type=player,tag=!CoolDownActive1,tag=VenomActive,nbt={SelectedItem:{tag:{cooldown3:1}}}] run title @e[type=player,tag=!CoolDownActive1,tag=VenomActive,nbt={SelectedItem:{tag:{venomshot:1,cooldown3:1}}}] actionbar {"text":"You have entered a 6.5s cooldown!","bold":true,"color":"white"}



	#Tidal Wave
#execute if entity @e[type=player,tag=WaterActive,tag=!CoolDownActive1] run schedule function ids-wings-of-fire:cooldown-one 160t append
#execute if entity @e[type=player,tag=!CoolDownActive1,tag=WaterActive,nbt={SelectedItem:{tag:{waterwave:1}}}] run title @e[type=player,tag=!CoolDownActive1,tag=WaterActive,nbt={SelectedItem:{tag:{waterwave:1}}}] actionbar {"text":"You have entered an 8s cooldown!","bold":true,"color":"aqua"}

execute if entity @e[type=player,tag=WaterActive,tag=!CoolDownActive1,nbt=!{SelectedItem:{tag:{cooldown1:1,cooldown2:1,cooldown3:1}}}] run schedule function ids-wings-of-fire:cooldown-one 160t append
execute if entity @e[type=player,tag=WaterActive,tag=!CoolDownActive1,nbt={SelectedItem:{tag:{cooldown1:1}}}] run schedule function ids-wings-of-fire:cooldown-one 150t append
execute if entity @e[type=player,tag=WaterActive,tag=!CoolDownActive1,nbt={SelectedItem:{tag:{cooldown2:1}}}] run schedule function ids-wings-of-fire:cooldown-one 140t append
execute if entity @e[type=player,tag=WaterActive,tag=!CoolDownActive1,nbt={SelectedItem:{tag:{cooldown3:1}}}] run schedule function ids-wings-of-fire:cooldown-one 130t append

execute if entity @e[type=player,tag=!CoolDownActive1,tag=WaterActive,nbt=!{SelectedItem:{tag:{cooldown1:1,cooldown2:1,cooldown3:1}}}] run title @e[type=player,tag=!CoolDownActive1,tag=WaterActive,nbt={SelectedItem:{tag:{waterwave:1}}},nbt=!{SelectedItem:{tag:{cooldown1:1,cooldown2:1,cooldown3:1}}}] actionbar {"text":"You have entered an 8s cooldown!","bold":true,"color":"aqua"}
execute if entity @e[type=player,tag=!CoolDownActive1,tag=WaterActive,nbt={SelectedItem:{tag:{cooldown1:1}}}] run title @e[type=player,tag=!CoolDownActive1,tag=WaterActive,nbt={SelectedItem:{tag:{waterwave:1,cooldown1:1}}}] actionbar {"text":"You have entered a 7.5s cooldown!","bold":true,"color":"aqua"}
execute if entity @e[type=player,tag=!CoolDownActive1,tag=WaterActive,nbt={SelectedItem:{tag:{cooldown2:1}}}] run title @e[type=player,tag=!CoolDownActive1,tag=WaterActive,nbt={SelectedItem:{tag:{waterwave:1,cooldown2:1}}}] actionbar {"text":"You have entered a 7s cooldown!","bold":true,"color":"aqua"}
execute if entity @e[type=player,tag=!CoolDownActive1,tag=WaterActive,nbt={SelectedItem:{tag:{cooldown3:1}}}] run title @e[type=player,tag=!CoolDownActive1,tag=WaterActive,nbt={SelectedItem:{tag:{waterwave:1,cooldown3:1}}}] actionbar {"text":"You have entered a 6.5s cooldown!","bold":true,"color":"aqua"}
#Announce Cooldown 1

	#Flame Breath
execute if entity @s[tag=!CoolDownActive1,tag=FlameActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run schedule function ids-wings-of-fire:cooldown-one 160t append
execute if entity @s[tag=!CoolDownActive1,tag=FlameActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run schedule function ids-wings-of-fire:cooldown-one 150t append
execute if entity @s[tag=!CoolDownActive1,tag=FlameActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run schedule function ids-wings-of-fire:cooldown-one 140t append
execute if entity @s[tag=!CoolDownActive1,tag=FlameActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown3] run schedule function ids-wings-of-fire:cooldown-one 130t append
execute if entity @s[tag=!CoolDownActive1,tag=FlameActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run title @s actionbar {"text":"Flame Breath has entered an 8s cooldown!","bold":true,"color":"red"}
execute if entity @s[tag=!CoolDownActive1,tag=FlameActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run title @s actionbar {"text":"Flame Breath has entered a 7.5s cooldown!","bold":true,"color":"red"}
execute if entity @s[tag=!CoolDownActive1,tag=FlameActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run title @s actionbar {"text":"Flame Breath has entered a 7s cooldown!","bold":true,"color":"red"}
execute if entity @s[tag=!CoolDownActive1,tag=FlameActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown3] run title @s actionbar {"text":"Flame Breath has entered a 6.5s cooldown!","bold":true,"color":"red"}

	#Frost Breath
execute if entity @s[tag=!CoolDownActive1,tag=FrostActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run schedule function ids-wings-of-fire:cooldown-one 160t append
execute if entity @s[tag=!CoolDownActive1,tag=FrostActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run schedule function ids-wings-of-fire:cooldown-one 150t append
execute if entity @s[tag=!CoolDownActive1,tag=FrostActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run schedule function ids-wings-of-fire:cooldown-one 140t append
execute if entity @s[tag=!CoolDownActive1,tag=FrostActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown3] run schedule function ids-wings-of-fire:cooldown-one 130t append
execute if entity @s[tag=!CoolDownActive1,tag=FrostActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run title @s actionbar {"text":"Frost Breath has entered an 8s cooldown!","bold":true,"color":"aqua"}
execute if entity @s[tag=!CoolDownActive1,tag=FrostActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run title @s actionbar {"text":"Frost Breath has entered a 7.5s cooldown!","bold":true,"color":"aqua"}
execute if entity @s[tag=!CoolDownActive1,tag=FrostActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run title @s actionbar {"text":"Frost Breath has entered a 7s cooldown!","bold":true,"color":"aqua"}
execute if entity @s[tag=!CoolDownActive1,tag=FrostActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown3] run title @s actionbar {"text":"Frost Breath has entered a 6.5s cooldown!","bold":true,"color":"aqua"}

	#Venom Shot
execute if entity @s[tag=!CoolDownActive1,tag=VenomActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run schedule function ids-wings-of-fire:cooldown-one 160t append
execute if entity @s[tag=!CoolDownActive1,tag=VenomActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run schedule function ids-wings-of-fire:cooldown-one 150t append
execute if entity @s[tag=!CoolDownActive1,tag=VenomActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run schedule function ids-wings-of-fire:cooldown-one 140t append
execute if entity @s[tag=!CoolDownActive1,tag=VenomActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown3] run schedule function ids-wings-of-fire:cooldown-one 130t append
execute if entity @s[tag=!CoolDownActive1,tag=VenomActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run title @s actionbar {"text":"Venom Shot has entered an 8s cooldown!","bold":true,"color":"white"}
execute if entity @s[tag=!CoolDownActive1,tag=VenomActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run title @s actionbar {"text":"Venom Shot has entered a 7.5s cooldown!","bold":true,"color":"white"}
execute if entity @s[tag=!CoolDownActive1,tag=VenomActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run title @s actionbar {"text":"Venom Shot has entered a 7s cooldown!","bold":true,"color":"white"}
execute if entity @s[tag=!CoolDownActive1,tag=VenomActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown3] run title @s actionbar {"text":"Venom Shot has entered a 6.5s cooldown!","bold":true,"color":"white"}

	#Tidal Wave
execute if entity @s[tag=!CoolDownActive1,tag=WaterActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run schedule function ids-wings-of-fire:cooldown-one 160t append
execute if entity @s[tag=!CoolDownActive1,tag=WaterActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run schedule function ids-wings-of-fire:cooldown-one 150t append
execute if entity @s[tag=!CoolDownActive1,tag=WaterActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run schedule function ids-wings-of-fire:cooldown-one 140t append
execute if entity @s[tag=!CoolDownActive1,tag=WaterActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown3] run schedule function ids-wings-of-fire:cooldown-one 130t append
execute if entity @s[tag=!CoolDownActive1,tag=WaterActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run title @s actionbar {"text":"Tidal Wave has entered an 8s cooldown!","bold":true,"color":"aqua"}
execute if entity @s[tag=!CoolDownActive1,tag=WaterActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run title @s actionbar {"text":"Tidal Wave has entered a 7.5s cooldown!","bold":true,"color":"aqua"}
execute if entity @s[tag=!CoolDownActive1,tag=WaterActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run title @s actionbar {"text":"Tidal Wave has entered a 7s cooldown!","bold":true,"color":"aqua"}
execute if entity @s[tag=!CoolDownActive1,tag=WaterActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown3] run title @s actionbar {"text":"Tidal Wave has entered a 6.5s cooldown!","bold":true,"color":"aqua"}
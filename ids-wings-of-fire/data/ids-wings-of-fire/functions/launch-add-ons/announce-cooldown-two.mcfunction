#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Announce Cooldown 2

	#Sky Surge
execute if entity @s[tag=!CoolDownActive2,tag=SurgeActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run schedule function ids-wings-of-fire:cooldown-two 400t append
execute if entity @s[tag=!CoolDownActive2,tag=SurgeActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run schedule function ids-wings-of-fire:cooldown-two 360t append
execute if entity @s[tag=!CoolDownActive2,tag=SurgeActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run schedule function ids-wings-of-fire:cooldown-two 320t append
execute if entity @s[tag=!CoolDownActive2,tag=SurgeActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run title @s actionbar {"text":"You have entered a 20s cooldown!","bold":true,"color":"dark_red"}
execute if entity @s[tag=!CoolDownActive2,tag=SurgeActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run title @s actionbar {"text":"You have entered an 18s cooldown!","bold":true,"color":"dark_red"}
execute if entity @s[tag=!CoolDownActive2,tag=SurgeActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run title @s actionbar {"text":"You have entered a 16s cooldown!","bold":true,"color":"dark_red"}

	#Serrated Strike
execute if entity @s[tag=!CoolDownActive2,tag=StrikeActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run schedule function ids-wings-of-fire:cooldown-two 400t append
execute if entity @s[tag=!CoolDownActive2,tag=StrikeActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run schedule function ids-wings-of-fire:cooldown-two 360t append
execute if entity @s[tag=!CoolDownActive2,tag=StrikeActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run schedule function ids-wings-of-fire:cooldown-two 320t append
execute if entity @s[tag=!CoolDownActive2,tag=StrikeActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run title @s actionbar {"text":"You have entered a 20s cooldown!","bold":true,"color":"gray"}
execute if entity @s[tag=!CoolDownActive2,tag=StrikeActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run title @s actionbar {"text":"You have entered an 18s cooldown!","bold":true,"color":"gray"}
execute if entity @s[tag=!CoolDownActive2,tag=StrikeActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run title @s actionbar {"text":"You have entered a 16s cooldown!","bold":true,"color":"gray"}

	#Overgrowth
execute if entity @s[tag=!CoolDownActive2,tag=GrowthActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run schedule function ids-wings-of-fire:cooldown-two 400t append
execute if entity @s[tag=!CoolDownActive2,tag=GrowthActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run schedule function ids-wings-of-fire:cooldown-two 360t append
execute if entity @s[tag=!CoolDownActive2,tag=GrowthActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run schedule function ids-wings-of-fire:cooldown-two 320t append
execute if entity @s[tag=!CoolDownActive2,tag=GrowthActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run title @s actionbar {"text":"You have entered a 20s cooldown!","bold":true,"color":"dark_green"}
execute if entity @s[tag=!CoolDownActive2,tag=GrowthActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run title @s actionbar {"text":"You have entered an 18s cooldown!","bold":true,"color":"dark_green"}
execute if entity @s[tag=!CoolDownActive2,tag=GrowthActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run title @s actionbar {"text":"You have entered a 16s cooldown!","bold":true,"color":"dark_green"}

	#Terrashock
execute if entity @s[tag=!CoolDownActive2,tag=ShockActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run schedule function ids-wings-of-fire:cooldown-two 400t append
execute if entity @s[tag=!CoolDownActive2,tag=ShockActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run schedule function ids-wings-of-fire:cooldown-two 360t append
execute if entity @s[tag=!CoolDownActive2,tag=ShockActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run schedule function ids-wings-of-fire:cooldown-two 320t append
execute if entity @s[tag=!CoolDownActive2,tag=ShockActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run title @s actionbar {"text":"You have entered a 20s cooldown!","bold":true,"color":"gold"}
execute if entity @s[tag=!CoolDownActive2,tag=ShockActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run title @s actionbar {"text":"You have entered an 18s cooldown!","bold":true,"color":"gold"}
execute if entity @s[tag=!CoolDownActive2,tag=ShockActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run title @s actionbar {"text":"You have entered a 16s cooldown!","bold":true,"color":"gold"}

	#Desert Storm
execute if entity @s[tag=!CoolDownActive2,tag=StormActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run schedule function ids-wings-of-fire:cooldown-two 400t append
execute if entity @s[tag=!CoolDownActive2,tag=StormActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run schedule function ids-wings-of-fire:cooldown-two 360t append
execute if entity @s[tag=!CoolDownActive2,tag=StormActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run schedule function ids-wings-of-fire:cooldown-two 320t append
execute if entity @s[tag=!CoolDownActive2,tag=StormActive,predicate=!ids-wings-of-fire:has-cd-upgrades/has-any-cooldown] run title @s actionbar {"text":"You have entered a 20s cooldown!","bold":true,"color":"yellow"}
execute if entity @s[tag=!CoolDownActive2,tag=StormActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown1] run title @s actionbar {"text":"You have entered an 18s cooldown!","bold":true,"color":"yellow"}
execute if entity @s[tag=!CoolDownActive2,tag=StormActive,predicate=ids-wings-of-fire:has-cd-upgrades/has-cooldown2] run title @s actionbar {"text":"You have entered a 16s cooldown!","bold":true,"color":"yellow"}
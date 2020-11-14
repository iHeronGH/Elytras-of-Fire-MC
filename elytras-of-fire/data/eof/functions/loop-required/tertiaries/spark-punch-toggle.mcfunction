#Toggle Spark Punch
	#Switch to Smite Mode
replaceitem entity @s[tag=sparkMode] hotbar.8 red_dye{display:{Name:'{"text":"Spark Punch","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"[Attack] with this item to","color":"dark_gray"}','{"text":"activate Spark Punch!","color":"dark_gray"}','{"text":"Current Mode:","color":"dark_gray"}','{"text":"Smite Mode","color":"yellow"}']},HideFlags:63,emberstrike:1,smitemode:1,tertiary:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"attSpd",Amount:0.25,Operation:1,UUID:[I;1109317282,1797737571,-2033422511,-1668861648],Slot:"mainhand"}]} 1
title @s[tag=sparkMode] actionbar {"text":"Smite mode activated!","color":"yellow","bold":true}
tag @s[tag=sparkMode] remove sparkMode

	#Switch to Spark Mode
replaceitem entity @p[nbt=!{Inventory:[{Slot:8b,Count:1b,tag:{emberstrike:1,tertiary:1}}]}] hotbar.8 red_dye{display:{Name:'{"text":"Spark Punch","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"[Attack] with this item to","color":"dark_gray"}','{"text":"activate Spark Punch!","color":"dark_gray"}','{"text":"Current Mode:","color":"dark_gray"}','{"text":"Spark Mode","color":"yellow"}']},HideFlags:63,emberstrike:1,sparkmode:1,tertiary:1,Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"attSpd",Amount:-0.875,Operation:1,UUID:[I;433315291,272648113,-1852522413,-940406804],Slot:"mainhand"}]} 1
title @s[tag=smiteMode] actionbar {"text":"Spark mode activated!","color":"yellow","bold":true}
tag @s[tag=smiteMode] remove smiteMode

tag @s[tag=toggleSpark] remove toggleSpark
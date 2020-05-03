#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Toggle Spark Punch
	#Switch to Smite Mode
replaceitem entity @s[tag=sparkMode] hotbar.8 red_dye{display:{Name:'{"text":"Spark Punch","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"[Attack] with this item to","color":"dark_gray"}','{"text":"activate Spark Punch!","color":"dark_gray"}','{"text":"Current Mode:","color":"dark_gray"}','{"text":"Smite Mode","color":"yellow"}']},emberstrike:1,smitemode:1,tertiary:1,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"attSpd",Slot:"mainhand",Amount:0.25,Operation:1,UUIDMost:58942,UUIDLeast:103467}]} 1
title @s[tag=sparkMode] actionbar ["",{"text":"Smite mode activated!","color":"yellow","bold":true}]
tag @s[tag=sparkMode] remove sparkMode

	#Switch to Spark Mode
replaceitem entity @s[tag=smiteMode] hotbar.8 red_dye{display:{Name:'{"text":"Spark Punch","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"[Attack] with this item to","color":"dark_gray"}','{"text":"activate Spark Punch!","color":"dark_gray"}','{"text":"Current Mode:","color":"dark_gray"}','{"text":"Spark Mode","color":"yellow"}']},emberstrike:1,sparkmode:1,tertiary:1,HideFlags:63,Enchantments:[{id:"minecraft:fire_aspect",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"attSpd",Slot:"mainhand",Amount:-0.875,Operation:1,UUIDMost:29046,UUIDLeast:106378}]} 1
title @s[tag=smiteMode] actionbar {"text":"Spark mode activated!","color":"yellow","bold":true}
tag @s[tag=smiteMode] remove smiteMode

tag @s[tag=toggleSpark] remove toggleSpark
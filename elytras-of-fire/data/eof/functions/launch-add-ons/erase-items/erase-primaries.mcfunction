#Announce Warning
tellraw @s[tag=!Primary,tag=Dragon,nbt=!{Health:0f}] {"text":"Do not attempt to duplicate items.","color":"red","bold":true}

#Remove Extra Primaries from Hotbar
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:0b,tag:{primary:1}}]}] hotbar.0 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:1b,tag:{primary:1}}]}] hotbar.1 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:2b,tag:{primary:1}}]}] hotbar.2 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:3b,tag:{primary:1}}]}] hotbar.3 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:4b,tag:{primary:1}}]}] hotbar.4 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:5b,tag:{primary:1}}]}] hotbar.5 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:8b,tag:{primary:1}}]}] hotbar.8 air

#Remove Extra Primaries from Inventory
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:9b,tag:{primary:1}}]}] inventory.0 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:10b,tag:{primary:1}}]}] inventory.1 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:11b,tag:{primary:1}}]}] inventory.2 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:12b,tag:{primary:1}}]}] inventory.3 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:13b,tag:{primary:1}}]}] inventory.4 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:14b,tag:{primary:1}}]}] inventory.5 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:15b,tag:{primary:1}}]}] inventory.6 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:16b,tag:{primary:1}}]}] inventory.7 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:17b,tag:{primary:1}}]}] inventory.8 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:18b,tag:{primary:1}}]}] inventory.9 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:19b,tag:{primary:1}}]}] inventory.10 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:20b,tag:{primary:1}}]}] inventory.11 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:21b,tag:{primary:1}}]}] inventory.12 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:22b,tag:{primary:1}}]}] inventory.13 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:23b,tag:{primary:1}}]}] inventory.14 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:24b,tag:{primary:1}}]}] inventory.15 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:25b,tag:{primary:1}}]}] inventory.16 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:26b,tag:{primary:1}}]}] inventory.17 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:27b,tag:{primary:1}}]}] inventory.18 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:28b,tag:{primary:1}}]}] inventory.19 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:29b,tag:{primary:1}}]}] inventory.20 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:30b,tag:{primary:1}}]}] inventory.21 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:31b,tag:{primary:1}}]}] inventory.22 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:32b,tag:{primary:1}}]}] inventory.23 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:33b,tag:{primary:1}}]}] inventory.24 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:34b,tag:{primary:1}}]}] inventory.25 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:35b,tag:{primary:1}}]}] inventory.26 air
replaceitem entity @s[tag=!Primary,nbt={Inventory:[{Slot:-106b,tag:{primary:1}}]}] weapon.offhand air
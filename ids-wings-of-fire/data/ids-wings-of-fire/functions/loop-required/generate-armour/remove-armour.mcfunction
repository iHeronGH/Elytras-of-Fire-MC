#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Check for Armours
execute if entity @s[nbt={Inventory:[{tag:{tribearmor:1}}]}] run clear @s #ids-wings-of-fire:leather-armour{tribearmor:1}
execute if entity @s[nbt={Inventory:[{tag:{tribewings:1}}]}] run clear @s elytra{tribewings:1}
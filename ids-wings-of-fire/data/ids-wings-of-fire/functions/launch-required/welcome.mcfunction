#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Display Welcome Message
tellraw @e[type=player] [{"text":"\n- ","color":"dark_gray","bold":true},{"text":"Elytras ","color":"red"},{"text":"of ","color":"gold"},{"text":"Fire ","color":"red"},{"text":"by ","bold":false},{"text":"iDinoSoul ","color":"dark_aqua"},{"text":"-\n"},{"text":"Version: ","color":"gray","bold":false},{"text":"1.2.0.1\n\n","color":"green"},{"text":"Installed DLCs: ","color":"gray","bold":false}]
execute if score thelostcontinent dlc matches 1 run tellraw @e[type=player] [{"text":"The Lost Continent","color":"gold","bold":true},{"text":" (v","color":"gray","bold":false},{"text":"1.0.0.1"},{"text":")","color":"gray","bold":false}]
tellraw @e[type=player] [{"text":"\nDon't know where to begin? Type ","color":"gray"},{"text":"/team join","color":"yellow","bold":true,"clickEvent":{"action":"suggest_command","value":"/team join "}},{"text":"!\nNeed help? Use ","color":"gray"},{"text":"/trigger help","color":"yellow","bold":true,"clickEvent":{"action":"suggest_command","value":"/trigger help"}},{"text":"!","color":"gray"}]
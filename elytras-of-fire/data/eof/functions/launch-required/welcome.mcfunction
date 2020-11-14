#Wings of Fire Datapack for Minecraft Java 1.16.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Display Welcome Message
tellraw @e[type=player] [{"text":"\n- ","color":"dark_gray","bold":true},{"text":"Elytras ","color":"red"},{"text":"of ","color":"gold"},{"text":"Fire ","color":"red"},{"text":"by ","bold":false},{"text":"iDinoSoul ","color":"dark_aqua"},{"text":"-\n"},{"text":"Version: ","color":"gray","bold":false},{"text":"1.2.1.2\n","color":"green"}]
function eof:check-dlcs
tellraw @e[type=player] [{"text":"\nDon't know where to begin? Type ","color":"gray"},{"text":"/team join","color":"yellow","bold":true,"clickEvent":{"action":"suggest_command","value":"/team join "}},{"text":"!\nNeed help? Use "},{"text":"/trigger help","color":"yellow","bold":true,"clickEvent":{"action":"suggest_command","value":"/trigger help"}},{"text":"!"}]
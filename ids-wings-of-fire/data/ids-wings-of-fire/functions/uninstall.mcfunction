#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Uninstall Datapack
function ids-wings-of-fire:launch-add-ons/delete/delete-scoreboard
function ids-wings-of-fire:launch-add-ons/delete/delete-teams
clear @e[type=player] #ids-wings-of-fire:leather-armour{tribearmor:1}
function ids-wings-of-fire:launch-add-ons/delete/delete-tags
execute as @e[type=player,tag=Pyrrhian] run function ids-wings-of-fire:loop-required/clear-abilities/clear-all
execute if score dlcavailable dlc matches 1 run function ids-wings-of-fire:remove-dlcs
scoreboard objectives remove dlc
datapack disable "file/ids-wings-of-fire"
tellraw @e[type=player] [{"text":"\nThe datapack and any DLCs have sucessfully deleted\nthemselves. If you wish to reinstall the datapack, you can ","color":"gray"},{"text":"click\nhere","color":"gold","clickEvent":{"action":"run_command","value":"/datapack enable \"file/ids-wings-of-fire\""}},{"text":" and it will magically reinstall itself, or you can type the\ncommand "},{"text":"/datapack enable \"file/ids-wings-of-fire\"","color":"gold","clickEvent":{"action":"suggest_command","value":"/datapack enable \"file/ids-wings-of-fire\""}},{"text":" to manually\nreinstall the datapack.\n\nThank you for using my datapack!","color":"gray"}]
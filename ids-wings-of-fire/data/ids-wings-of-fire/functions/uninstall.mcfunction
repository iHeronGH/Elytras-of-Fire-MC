#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Uninstall Datapack
function ids-wings-of-fire:launch-add-ons/delete/delete-scoreboard
function ids-wings-of-fire:launch-add-ons/delete/delete-teams
clear @a #ids-wings-of-fire:leather-armour{tribearmor:1}
function ids-wings-of-fire:launch-add-ons/delete/delete-tags
execute as @a[tag=Dragon] run function ids-wings-of-fire:loop-required/clear-abilities
datapack disable "file/ids-wings-of-fire"
tellraw @a [{"text":"The datapack has sucessfully deleted itself. If you wish to reinstall it, you can ","color":"gray"},{"text":"click here","color":"gold","clickEvent":{"action":"run_command","value":"/datapack enable \"file/ids-wings-of-fire\""}},{"text":" and it will magically reinstall itself, or you can type the command "},{"text":"/datapack enable \"file/ids-wings-of-fire\"","color":"gold","clickEvent":{"action":"suggest_command","value":"/datapack enable \"file/ids-wings-of-fire\""}},{"text":" to manually reinstall the datapack.\n\nThank you for using my datapack!","color":"gray"}]
#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Uninstall Datapack
function ids-wings-of-fire:launch-add-ons/delete/delete-scoreboard
function ids-wings-of-fire:launch-add-ons/delete/delete-teams
clear @s #ids-wings-of-fire:leather-armour{tribearmor:1}
function ids-wings-of-fire:launch-add-ons/delete/delete-tags
execute as @a run function ids-wings-of-fire:loop-required/clear-abilities
datapack disable "file/ids-wings-of-fire"
#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Runs Upgrades
scoreboard players enable @a[team=!] Upgrades

#Generate Upgrades
execute as @a[team=IceWings] run function ids-wings-of-fire:loop-required/upgrades/icewing-upgrades
execute as @a[team=MudWings] run function ids-wings-of-fire:loop-required/upgrades/mudwing-upgrades
execute as @a[team=NightWings] run function ids-wings-of-fire:loop-required/upgrades/nightwing-upgrades
execute as @a[team=RainWings] run function ids-wings-of-fire:loop-required/upgrades/rainwing-upgrades
execute as @a[team=SandWings] run function ids-wings-of-fire:loop-required/upgrades/sandwing-upgrades
execute as @a[team=SeaWings] run function ids-wings-of-fire:loop-required/upgrades/seawing-upgrades
execute as @a[team=SkyWings] run function ids-wings-of-fire:loop-required/upgrades/skywing-upgrades

#Display Upgrade GUIs
execute as @a[team=!,scores={Upgrades=1..},nbt={SelectedItem:{tag:{primary:1}}}] run function ids-wings-of-fire:loop-required/upgrades/display-primary-upgrade-gui
execute as @a[team=!,scores={Upgrades=1..},nbt={SelectedItem:{tag:{secondary:1}}}] run function ids-wings-of-fire:loop-required/upgrades/display-secondary-upgrade-gui

#Warns
execute as @a[team=,scores={Upgrades=1..}] run tellraw @s [{"text":"You are currently not a part of any tribes! Join a\ntribe before attempting to upgrade abilities.","color":"red","bold":true}]
execute as @a[team=!,scores={Upgrades=1..},nbt=!{SelectedItem:{tag:{primary:1}}},nbt=!{SelectedItem:{tag:{secondary:1}}}] run tellraw @s [{"text":"Not an upgradable item/ability! Please try again with\na different ability.","color":"red","bold":true}]

#Reset
execute as @a[scores={Upgrades=1..}] run scoreboard players set @s Upgrades 0
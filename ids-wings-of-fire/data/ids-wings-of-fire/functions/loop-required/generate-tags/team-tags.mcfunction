#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Tag Pyre
execute unless entity @s[team=!MudWings,team=!NightWings,team=!SandWings,team=!SkyWings,tag=!Pyre] run tag @s add Pyre
execute unless entity @s[team=!IceWings,team=!RainWings,team=!SeaWings,team=!,tag=Pyre] run tag @s remove Pyre

#Tag Perma
execute if entity @s[team=IceWings,tag=!Perma] run tag @s add Perma
execute if entity @s[team=!IceWings,tag=Perma] run tag @s remove Perma

#Tag Potent
execute if entity @s[team=RainWings,tag=!Potent] run tag @s add Potent
execute if entity @s[team=!RainWings,tag=Potent] run tag @s remove Potent

#Tag Porous
execute if entity @s[team=SeaWings,tag=!Porous] run tag @s add Porous
execute if entity @s[team=!SeaWings,tag=Porous] run tag @s remove Porous

#Tag Dragon
execute unless entity @s[team=!IceWings,team=!MudWings,team=!NightWings,team=!RainWings,team=!SandWings,team=!SeaWings,team=!SkyWings,tag=!Dragon] run tag @s add Dragon
execute if entity @s[team=!IceWings,team=!MudWings,team=!NightWings,team=!RainWings,team=!SandWings,team=!SeaWings,team=!SkyWings,tag=Dragon] run tag @s remove Dragon
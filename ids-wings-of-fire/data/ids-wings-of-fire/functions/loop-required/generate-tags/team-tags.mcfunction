#Tag Pyre
execute as @a unless entity @s[team=!MudWings,team=!NightWings,team=!SandWings,team=!SkyWings,tag=!Pyre] run tag @s add Pyre
tag @a[team=!MudWings,team=!NightWings,team=!SandWings,team=!SkyWings,team=!,tag=Pyre] remove Pyre

#Tag Perma
tag @a[team=IceWings,tag=!Perma] add Perma
tag @a[team=!IceWings,tag=Perma] remove Perma

#Tag Potent
tag @a[team=RainWings,tag=!Potent] add Potent
tag @a[team=!RainWings,tag=Potent] remove Potent

#Tag Porous
tag @a[team=SeaWings,tag=!Porous] add Porous
tag @a[team=!SeaWings,tag=Porous] remove Porous

#Tag Pyrrhian
execute as @a unless entity @s[team=!IceWings,team=!MudWings,team=!NightWings,team=!RainWings,team=!SandWings,team=!SeaWings,team=!SkyWings,tag=Pyrrhian] run tag @s add Pyrrhian
tag @a[team=!IceWings,team=!MudWings,team=!NightWings,team=!RainWings,team=!SandWings,team=!SeaWings,team=!SkyWings,tag=Pyrrhian] remove Pyrrhian

#Tag Dragon
tag @a[tag=Pyrrhian,tag=!Dragon] add Dragon
execute unless score dlcavailable dlc matches 1 run tag @a[tag=!Pyrrhian,tag=Dragon] remove Dragon
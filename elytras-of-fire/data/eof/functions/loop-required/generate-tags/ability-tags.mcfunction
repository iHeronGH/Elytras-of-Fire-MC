#Tag Pri, Sec, Ter, Act
tag @a[tag=Dragon,tag=!Primary,scores={Primary=6}] add Primary
tag @a[tag=Dragon,tag=!Secondary,scores={Secondary=7}] add Secondary
tag @a[tag=Dragon,tag=!Tertiary,scores={Tertiary=8}] add Tertiary
tag @a[tag=Dragon,tag=!Activator,scores={Activator=-106}] add Activator

execute at @a unless entity @p[tag=Primary,scores={Primary=6}] run tag @p[distance=0] remove Primary
execute at @a unless entity @p[tag=Secondary,scores={Secondary=7}] run tag @p[distance=0] remove Secondary
execute at @a unless entity @p[tag=Tertiary,scores={Tertiary=8}] run tag @p[distance=0] remove Tertiary
execute at @a unless entity @p[tag=Activator,scores={Activator=-106}] run tag @p[distance=0] remove Activator
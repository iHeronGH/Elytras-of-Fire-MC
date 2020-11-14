#Check if Flying
execute as @p[distance=0,tag=!isFlying] unless block ~ ~ ~ #eof:families/water unless block ~ ~-0.5 ~ #minecraft:slabs if block ~ ~-1 ~ #eof:families/flight-passive if block ~ ~-2 ~ #eof:families/flight-passive run tag @s add isFlying
execute as @p[distance=0,tag=isFlying] if block ~ ~ ~ #eof:families/flight-passive unless block ~ ~-1 ~ #eof:families/flight-passive run tag @s remove isFlying
execute as @p[distance=0,tag=isFlying] if block ~ ~ ~ #eof:families/flight-passive unless block ~ ~-2 ~ #eof:families/flight-passive run tag @s remove isFlying
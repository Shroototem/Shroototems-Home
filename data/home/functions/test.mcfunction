execute as @e[type=minecraft:area_effect_cloud,nbt={Age:2,CustomName:'{"text":"PortalRemove"}'}] at @s run setblock ~ ~-1 ~ air
execute as @a[scores={SDP_Home=1..,SDP_HomeDim=0,SDP_HomeY=1..}] at @s in minecraft:overworld run tp @s 0 250 0
execute as @a[scores={SDP_Home=1..,SDP_HomeDim=-1,SDP_HomeY=1..}] at @s in minecraft:the_nether run tp @s 0 250 0
execute as @a[scores={SDP_Home=1..,SDP_HomeDim=1,SDP_HomeY=1..}] at @s in minecraft:the_end run tp @s 0 250 0
execute as @a[scores={SDP_Home=1..,SDP_HomeY=1..}] at @s run function home:home
execute as @a[scores={SDP_SetHome=1..}] at @s run function home:set_home
scoreboard players enable @a SDP_Home
scoreboard players enable @a SDP_SetHome

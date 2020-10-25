summon minecraft:area_effect_cloud ~ ~2 ~ {Duration:3,CustomName:'{"text":"PortalRemove"}'}
setblock ~ ~1 ~ minecraft:end_gateway{ExactTeleport:1} keep
execute store result storage sdp_home SDP_HomeX int 1 run scoreboard players get @s SDP_HomeX
execute store result storage sdp_home SDP_HomeY int 1 run scoreboard players get @s SDP_HomeY
execute store result storage sdp_home SDP_HomeZ int 1 run scoreboard players get @s SDP_HomeZ
data modify block ~ ~1 ~ ExitPortal.X set from storage minecraft:sdp_home SDP_HomeX
data modify block ~ ~1 ~ ExitPortal.Y set from storage minecraft:sdp_home SDP_HomeY
data modify block ~ ~1 ~ ExitPortal.Z set from storage minecraft:sdp_home SDP_HomeZ
effect give @s minecraft:levitation 1 0 true
scoreboard players reset @s SDP_Home

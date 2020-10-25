execute store result score @s SDP_HomeX run data get entity @s Pos[0]
execute store result score @s SDP_HomeY run data get entity @s Pos[1]
execute store result score @s SDP_HomeZ run data get entity @s Pos[2]
scoreboard players set @s[nbt={Dimension:"minecraft:overworld"}] SDP_HomeDim 0
scoreboard players set @s[nbt={Dimension:"minecraft:the_nether"}] SDP_HomeDim -1
scoreboard players set @s[nbt={Dimension:"minecraft:the_end"}] SDP_HomeDim 1
scoreboard players reset @a SDP_SetHome

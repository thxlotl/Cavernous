function block_utils:v1/api/is_active

execute if score #out block_utils.data matches 1 run scoreboard players set @s powered 1
execute if score #out block_utils.data matches 0 run scoreboard players set @s powered 0

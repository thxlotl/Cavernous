execute if block ~ ~1 ~ #cave_items:empty_blocks run setblock ~ ~1 ~ light[level=11,waterlogged=false]
execute if block ~ ~1 ~ water run setblock ~ ~1 ~ light[level=11,waterlogged=true]
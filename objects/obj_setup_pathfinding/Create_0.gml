grid = mp_grid_create(0, 0, room_width/CELL_WIDTH, room_height/CELL_HEIGHT, CELL_WIDTH, CELL_HEIGHT)
mp_grid_add_instances(grid, obj_solid, false)
alarm[0] = 2;
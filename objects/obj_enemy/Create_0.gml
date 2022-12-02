depth = -y-1000
path_update_rate = 30
path = path_add()
path_set_precision(path, 4);// how sharp should turns be?
alarm[10] = path_update_rate
target_x = obj_player.x
target_y = obj_player.y

// create grid
grid = mp_grid_create(0, 0, room_width/CELL_WIDTH, room_height/CELL_HEIGHT, CELL_WIDTH, CELL_HEIGHT)







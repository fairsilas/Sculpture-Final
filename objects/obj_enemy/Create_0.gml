spd = 1*global.enemy_speed*global.difficulty


//set up CHASE variables
path_update_rate = 30
path = path_add()
path_set_precision(path, 4);// how sharp should turns be?
alarm[10] = path_update_rate
target_x = obj_player.x
target_y = obj_player.y
dto_p = distance_to_object(obj_player)

//set up EXPLORE variables
randomize()
rand_dir = choose(0, 90, 180, 270)
dir_x = lengthdir_x(CELL_HEIGHT, rand_dir)
dir_y = lengthdir_y(CELL_WIDTH, rand_dir)

// create grid
grid = mp_grid_create(0, 0, room_width/CELL_WIDTH, room_height/CELL_HEIGHT, CELL_WIDTH, CELL_HEIGHT)
list = ds_priority_create()



//states
state = IDLE

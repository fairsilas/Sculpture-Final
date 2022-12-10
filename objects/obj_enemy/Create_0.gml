spd = 0.6*global.enemy_speed*(1+(global.score/100))
clamp(spd, 0.5, 1.2)
slowed_spd = random_range(spd/3, spd/1.5)

//flag for whether enemy has been relocated
relocated = false

//set up CHASE variables
//rate at which the path will be updated
path_update_rate = 30
//create a new path
path = path_add()
//set precision for sharpness of turns
path_set_precision(path, 4);
//set alarm to update path
alarm[10] = path_update_rate
//get player's x and y coordinates
target_x = obj_player.x
target_y = obj_player.y
//calculate distance to player
dto_p = distance_to_object(obj_player)

//set up EXPLORE variables
//randomize direction
randomize()
//choose a random direction from 0, 90, 180, or 270 degrees
rand_dir = choose(0, 90, 180, 270)
//calculate x and y direction based on chosen direction
dir_x = lengthdir_x(CELL_HEIGHT, rand_dir)
dir_y = lengthdir_y(CELL_WIDTH, rand_dir)

//create grid
grid = obj_setup_pathfinding.grid
//create a priority queue
list = ds_priority_create()

//set initial state to IDLE
state = IDLE
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
grid = obj_setup_pathfinding.grid
list = ds_priority_create()



//states
state = IDLE

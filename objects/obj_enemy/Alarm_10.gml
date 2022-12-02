/// @description Insert description here
// You can write your code in this editor
path_delete(path);
path = path_add();

target_x = obj_player.x
target_y = obj_player.y

mp_grid_add_instances(grid, obj_solid, 0)

// use mp grid, make a path, ride on it
mp_grid_path(grid, path, x, y, target_x, target_y, 0)

// ride on path
path_start(path, 1, path_action_stop, true)

//loop
alarm[10] = path_update_rate;

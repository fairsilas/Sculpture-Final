/// @description Insert description here
// You can write your code in this editor
path_delete(path);
path = path_add();

if (state = IDLE){
	if !(collision_line(x,y, obj_player.x, obj_player.y, obj_solid, false,true)){
		target_x = obj_player.x+(obj_player.x-obj_player.xprevious)*path_update_rate;
		target_y = obj_player.y+(obj_player.y-obj_player.yprevious)*path_update_rate;
		alarm[11] = 200
		path_speed = spd
	}else{
		if (alarm[11] >= 1){
			target_x = obj_player.x+(obj_player.x-obj_player.xprevious)*path_update_rate;
			target_y = obj_player.y+(obj_player.y-obj_player.yprevious)*path_update_rate;
			path_speed = spd/2
		}else{
			target_x = xstart
			target_y = ystart
		}
	}

	mp_grid_add_instances(grid, obj_solid, false)
	mp_grid_path(grid, path, x, y, target_x, target_y, true)
	path_start(path, spd, path_action_stop, true)
}




//loop
alarm[10] = path_update_rate+distance_to_object(obj_player)/60;

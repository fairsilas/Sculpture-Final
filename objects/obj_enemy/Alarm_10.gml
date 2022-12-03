/// @description Insert description here
// You can write your code in this editor
path_delete(path);
path = path_add();


if !(collision_line(x,y, obj_player.x, obj_player.y, obj_solid, false,true)){
	target_x = obj_player.x+(obj_player.x-obj_player.xprevious)*path_update_rate;
	target_y = obj_player.y+(obj_player.y-obj_player.yprevious)*path_update_rate;
}else{
	if (x = target_x) and (y = target_y){
	target_x = xstart
	target_y = ystart
	}
}

mp_grid_add_instances(grid, obj_solid, false)
mp_grid_path(grid, path, x, y, target_x, target_y, true)
//path_start(path, spd, path_action_stop, true)




//loop
alarm[10] = path_update_rate+distance_to_object(obj_player)/60;

/// @description Insert description here
// You can write your code in this editor
var check_x = x
var check_y = y



var see_player = !(collision_line(x,y, obj_player.x, obj_player.y, obj_solid, false,true))and 
					(distance_to_object(obj_player)< 120)and
					((sprite_index = spr_player_up and obj_player.y < y)or
					(sprite_index = spr_player_down and obj_player.y > y)or
					(sprite_index = spr_player_left and obj_player.x < x)or
					(sprite_index = spr_player_right and obj_player.x > x))
randomize()
if (speed >= path_speed){
image_speed = speed
}else{
image_speed = path_speed
}

//if sees player then attack
if (state = IDLE)or (state = RETURN){
	if (see_player){
		state = CHASE
		alarm[11] = 200
	}
}

///patrol around
if (state = IDLE){
	// move toward empty cell randomly
	if(place_empty(x+dir_x, y+dir_y, obj_solid)){
		direction = rand_dir
		speed = spd/2
	}else{
		speed = 0
		rand_dir = choose(0, 90, 180, 270)
		dir_x = lengthdir_x(4, rand_dir)
		dir_y = lengthdir_y(4, rand_dir)
	}
}

//follow the player
if (state = CHASE){
	
	target_x = obj_player.x+((obj_player.x - obj_player.xprevious)*spd);
	target_y = obj_player.y+((obj_player.x - obj_player.xprevious)*spd);
	//avoid other enemies
	check_x = x
	check_y = y
	x = -10000
	y = -10000
	ne = instance_nearest(check_x,check_y, obj_enemy)
	x = check_x
	y = check_y
	dto_p = path_get_length(path)
	
	//allow player to lose enemy
	if (alarm[11] > 1){
			// avoid clumping
			if(distance_to_object(ne) < 8){
				if (dto_p < ne.dto_p){
					path_speed = spd
				}else{
					path_speed = spd/2
				}
			}
			if (see_player){
			alarm[11] = 200
			}
	}else if (alarm[11] <= 1){
		state = RETURN
	}
	
}
//return to starting pos
if (state = RETURN){
	
	target_x = xstart
	target_y = ystart
	
	//avoid other enemies
	var check_x = x
	var check_y = y
	x = -10000
	y = -10000
	ne = instance_nearest(check_x,check_y, obj_enemy)
	x = check_x
	y = check_y
	dto_p = path_get_length(path)
	if(distance_to_object(ne) < 8){
		if (dto_p < ne.dto_p){
			path_speed = spd/2
		}else{
			path_speed = spd/4
		}
	}
	if distance_to_point(xstart,ystart)<1{
		state = IDLE	
	}
}

///refresh paths 
if alarm[10] <= 1{
	path_delete(path);
	path = path_add();

	if (state = CHASE){
		
		mp_grid_add_instances(grid, obj_solid, false)
		mp_grid_path(grid, path, check_x, check_y, target_x, target_y, true)
		path_start(path, spd, path_action_stop, true)
	}
	
	//map out path to starting pos
	if (state = RETURN){
		mp_grid_add_instances(grid, obj_solid, false)
		mp_grid_path(grid, path, check_x, check_y, target_x, target_y, true)
		path_start(path, spd, path_action_stop, true)
	}

	//loop
	alarm[10] = path_update_rate
}







//up
if  (direction >= 90-44 and direction <90+44){
	sprite_index = spr_player_up
}else
//down
if (direction >= 270-44 and direction <270+44){
	sprite_index = spr_player_down
}else	
//left
if (direction >= 180-44 and direction <180+44){
	sprite_index = spr_player_left
}
//right
else if(direction >= 0-44 and direction < 0+44){
	sprite_index = spr_player_right
}

if place_meeting(x,y,obj_player){
	room_restart()
	//adapt game for cross device players
	global.difficulty = global.difficulty/global.change_rate 
}



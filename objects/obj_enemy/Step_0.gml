/// @description Insert description here
// You can write your code in this editor

//avoid other enemies
var check_x = x
var check_y = y
x = -10000
y = -10000
ne = instance_nearest(check_x,check_y, obj_enemy)
x = check_x
y = check_y
//compare distance to player with nearest enemy

dto_p = path_get_length(path)

draw_text(ne.x,ne.y, dto_p-ne.dto_p)
if(distance_to_object(ne) < 4){
	if (dto_p < ne.dto_p){
		path_speed = spd
	}else{
		path_speed = 0.5
	}
}

motion_add(point_direction(),spd/10)




//up
if  (direction >= 90-45 and direction <90+45){
	sprite_index = spr_player_up
}else
//down
if (direction >= 270-45 and direction <270+45){
	sprite_index = spr_player_down
}else	
//left
if (direction >= 180-45 and direction <180+45){
	sprite_index = spr_player_left
}
//right
else if(direction >= 0-45 and direction < 0+45){
	sprite_index = spr_player_right
}




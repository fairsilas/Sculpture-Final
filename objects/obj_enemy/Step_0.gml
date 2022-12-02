/// @description Insert description here
// You can write your code in this editor

var px = obj_player.x
var py = obj_player.y
grid = obj_setup_pathfinding.grid
//mp_potential_settings(10,90, 50, true)
//mp_potential_step(px, py, 0.5, 1)
//mp_potential_step_object(px, py, 0.5, obj_solid)

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




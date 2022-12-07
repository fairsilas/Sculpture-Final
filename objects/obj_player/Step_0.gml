
depth = -y
k_a = keyboard_check(ord("A"))
k_d = keyboard_check(ord("D"))
k_w = keyboard_check(ord("W"))
k_s = keyboard_check(ord("S"))

//if key is pressed
//if not colllideing
if (global.player_can_move = true){
if k_w and !place_meeting(x,y-2,obj_solid){
	sprite_index = spr_player_up
	y-=spd

}

if k_s and !place_meeting(x,y+2,obj_solid){
	sprite_index = spr_player_down
	y+=spd
}
if k_a and !place_meeting(x-2,y,obj_solid){
	sprite_index = spr_player_left
	x-=spd
}

if k_d and !place_meeting(x+2,y,obj_solid){
	sprite_index = spr_player_right
	x+=spd
}
//if keys are not pressed
if!k_a and !k_d and !k_w and !k_s{
	image_speed = 0
	image_index = 0
}else{
	image_speed = 1	
}
}else{
image_speed = 0
image_index = 0
}

// lose the game
if (global.lives <= 0){
	room_goto(r_feedback);
}

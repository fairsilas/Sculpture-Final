


if !place_meeting(x,y+16,obj_wall)and (sprite_index != spr_wall_side){
	sprite_index = spr_wall_side
	image_index = irandom(image_number-1)
}

//ensure a door is created
if !instance_exists(obj_door){
	instance_create_depth(x,y,-y,obj_door)
}

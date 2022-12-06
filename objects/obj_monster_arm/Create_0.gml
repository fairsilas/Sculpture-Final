
var mother = instance_nearest(x,y,obj_monster)
depth = -y
if place_meeting(x,y,obj_solid){
	//instance_destroy()	
}

if (point_direction(mother.x,mother.y,x, y) = 0){
	sprite_index = spr_monster_tentacle_right
}

if (point_direction(mother.x,mother.y,x, y) = 180){
	sprite_index = spr_monster_tentacle_left
}

if (point_direction(mother.x,mother.y,x, y) = 90){
	sprite_index = spr_monster_tentacle_up
}

if (point_direction(mother.x,mother.y,x, y) = 270){
	sprite_index = spr_monster_tentacle_down
}


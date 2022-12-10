if place_meeting(x,y,obj_player){
	instance_destroy()
	global.key = true
}

if (relocated = false)or place_meeting(x,y,obj_solid){
	inst_f = instance_furthest((obj_door.x+obj_player.x*2)/3, obj_door.y+(obj_player.y*2)/3, obj_floor)
	x = inst_f.x
	y = inst_f.y
	relocated = true
}


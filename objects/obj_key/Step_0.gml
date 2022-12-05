if place_meeting(x,y,obj_player){
	instance_destroy()
	global.keys++
}

if (relocated = false){
	inst_f = instance_furthest(obj_door.x+obj_player.x/2, obj_door.x+obj_player.y/2, obj_floor)
	x = inst_f.x
	y = inst_f.y
	relocated = true
}


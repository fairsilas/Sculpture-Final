if place_meeting(x,y,obj_player){
	instance_destroy()
	global.keys++
}

if (relocated = false)or place_meeting(x,y,obj_solid){
	inst_f = instance_furthest((x+obj_player.x*2)/4, y+(obj_player.y*2)/4, obj_floor)
	x = inst_f.x
	y = inst_f.y
	relocated = true
}


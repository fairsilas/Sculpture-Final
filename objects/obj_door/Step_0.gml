if place_meeting(x, y, obj_player)and global.keys > 0{
	door_timer --
}else{
	door_timer = 10
}
if door_timer <=0{
global.score++
global.keys--
room_restart()	
}


if (relocated = false){
	inst_f = instance_nearest(x,y, obj_floor)
	x = inst_f.x
	y = inst_f.y
}

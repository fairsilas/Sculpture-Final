if place_meeting(x, y+4, obj_player){
	if keyboard_check_pressed(vk_space)and global.keys >0{
		room_restart()
		global.score ++
		global.difficulty = global.difficulty*global.change_rate 
	}
}


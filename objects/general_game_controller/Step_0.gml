
if (global.level = 10)and (boss_created[0] < 0){
	instance_destroy(obj_enemy)
	//create number of bosses equal to bosses created for the first boss
	repeat(boss_created[0]){
		instance_create_depth(x,y,obj_enemy)
		boss_created[0]++
	}
}
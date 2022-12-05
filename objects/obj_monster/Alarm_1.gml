
var x_check = [-16,0,16]
var y_check = [-16,0,16]

for (yy = 0; yy < 3; yy++){
	for (xx = 0; xx < 3; xx++){
		instance_create_depth(x+x_check[xx],y+y_check[yy], obj_monster_arm)
	}
}


alarm[1] = 100


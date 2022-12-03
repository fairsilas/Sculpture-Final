//if there is no wall below turn into
if !place_meeting(x,y+16,obj_wall) and !place_meeting(x,y+16,obj_wall_side){
	instance_create_depth(x,y, -y, obj_wall_side)
	instance_destroy()
}


if (sprite_set = false){
var counter = 0;
var x_check = [-16,0,16]
var y_check = [-16,0,16]

for (yy = 0; yy < 3; yy++){
	for (xx = 0; xx < 3; xx++){
		if position_meeting(x+x_check[xx],y+y_check[yy], obj_wall){
				counter++
		}
	}
}

if (counter >= 9){
	sprite_index = spr_wall_black
}
sprite_set = true
}
draw_sprite(spr_slider, 1, slide1_x, y)
draw_sprite(spr_slider, 0, x, y)


var height = 4
var width = sprite_width/2
if mouse_check_button(mb_left){
	if(mouse_x > x-width)&(mouse_x < x+width)&(mouse_y < y+height)&(mouse_y > y-height){
		slide1_x = mouse_x
	}
}

if keyboard_check_pressed(vk_enter){
	room_goto(r1)
}



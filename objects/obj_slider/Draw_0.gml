draw_text_transformed(5, 5, "What adjustments would you make to this game?", 0.7, 0.7, 0)


for (i=0; i<5; i++){
	draw_set_font(fnt_gui)
	draw_text_transformed(x-sprite_width+20, slide_y[i]-10, slide_title[i]+ string(i) +":"+ string((x-slide_x[i])/200)+"%", 0.5, 0.5, 0)
	draw_sprite(spr_slider, 0, x, slide_y[i])
	draw_sprite(spr_slider, 1, slide_x[i], slide_y[i])
}



if mouse_check_button(mb_left){
	for (i=0; i< 5; i++){
		if(mouse_x > x-width)&(mouse_x < x+width)&(mouse_y < slide_y[i]+height)&(mouse_y > slide_y[i]-height){
			slide_x[i] = mouse_x
		}
	}
}

if keyboard_check_pressed(vk_enter){
	for(i = 0; i < 5; i++){
	global.player_lives
	global.enemy_number
	global.enemy_speed
	global.map_size
	global.player_speed 
	}
	
	room_goto(r1)
}



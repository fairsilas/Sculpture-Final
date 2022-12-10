draw_text_transformed(5, 5, "What adjustments would you make to this game?", 0.7, 0.7, 0)
draw_text_transformed(5, 20, "Your feedback will cause slight changes when someone else plays.", 0.3, 0.3, 0)
draw_text_transformed(5, room_height-12, "(Press enter to submit)", 0.7, 0.7, 0)

for (i=0; i<5; i++){
	draw_set_font(fnt_gui)
	draw_text_transformed(x-sprite_width-50, slide_y[i]-5, slide_title[i] +" "+ slide_states[slide_state[i]], 0.5, 0.5, 0)
	draw_sprite(spr_slider, 0, x, slide_y[i])
	draw_sprite(spr_slider, 1, slide_x[i], slide_y[i])
}

if keyboard_check_pressed(vk_enter){
		global.player_lives *= 1.1
		global.player_speed	*= 1.1
		global.enemy_speed	*= 1.1
		global.enemy_number *= 1.1
		global.map_size		*= 1.1
		overwrite_scoreboard();
		show_message("feedback Saved")
		game_end()
}
if mouse_check_button(mb_left){
	x = xstart
	y = ystart
	for (i=0; i< 5; i++){
		if(mouse_x > x-width)and(mouse_x < x+width)and(mouse_y < slide_y[i]+height)&(mouse_y > slide_y[i]-height){
			if (mouse_x < x-32){
				slide_x[i] = x-width
				slide_state[i] = 1
			}
			else  if (mouse_x > x+32){
				slide_x[i] = x+width
				slide_state[i] = 2
			}else{
				slide_x[i] = x
				slide_state[i] = 0
			}
		}
	}
}




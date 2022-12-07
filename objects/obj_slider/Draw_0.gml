draw_text_transformed(5, 5, "What adjustments would you make to this game?", 0.7, 0.7, 0)
draw_text_transformed(5, 20, "Changes will be subtle so drag the slider all the way if you are sure something needs to change.", 0.3, 0.3, 0)

for (i=0; i<5; i++){
	draw_set_font(fnt_gui)
	draw_text_transformed(x-sprite_width-50, slide_y[i]-5, slide_title[i] +" "+ string(slide_x[i]-x), 0.5, 0.5, 0)
	draw_sprite(spr_slider, 0, x, slide_y[i])
	draw_sprite(spr_slider, 1, slide_x[i], slide_y[i])
}

button_y = slide_y[4]+10
button_x = 30
x = button_y
y = button_x
draw_sprite(spr_slider, 2, button_x, button_y)
x = xstart
y = ystart
if keyboard_check_pressed(vk_space){
		global.player_lives += (slide_x[0]-x)/200
		global.player_speed	+= (slide_x[1]-x)/200
		global.enemy_speed	+= (slide_x[2]-x)/200
		global.enemy_number += (slide_x[3]-x)/200
		global.map_size		+= (slide_x[4]-x)/200
		overwrite_scoreboard();
		show_message(string(global.enemy_number))
		url_open("https://gmscoreboard.com/"+global.tagid);
}
if mouse_check_button(mb_left){
	x = button_y
	y = button_x
	if position_meeting(mouse_x,mouse_y,self){
		global.player_lives += (slide_x[0]-x)/200
		global.player_speed	+= (slide_x[1]-x)/200
		global.enemy_speed	+= (slide_x[2]-x)/200
		global.enemy_number += (slide_x[3]-x)/200
		global.map_size		+= (slide_x[4]-x)/200
		show_debug_message("Feedback submitted successfully")
		overwrite_scoreboard();
		
		game_end()
	}
	x = xstart
	y = ystart
	for (i=0; i< 5; i++){
		if(mouse_x > x-width)&(mouse_x < x+width)&(mouse_y < slide_y[i]+height)&(mouse_y > slide_y[i]-height){
			slide_x[i] = mouse_x
		}
	}
}





//draw_set_color(c_white);
//draw_text(20,10,"Press Enter to set a score.");
//draw_text(20,30,"Press Shift to manually request score data.");
//draw_text(20,50,"Press Ctrl to open a web page to show your entire scoreboard.");
//vx = camera_get_view_x(view_camera[0])
//vy = camera_get_view_y(view_camera[0])
//draw_set_font(fnt_gui)

////example of drawing scores
//if !ds_list_empty(global.gmscoreboard_scores){
//	var num = ds_list_size(global.gmscoreboard_scores);
//	//draw_text(20,90,"Score data:");
//	for (var i = 0; i < num; i++){
//		var item = ds_list_find_value(global.gmscoreboard_scores, i);
//		var player = item[? "player"];
//		var player_score = item[? "score"];
		
//		//draw a string of the data.
//		draw_text(20,110+(20*i), string(i+1)+ ". " + player + " " + string(player_score));
//	}
	
//	//create an object depending on score
//	for (var i = 0; i < num; i++){
//		var item = ds_list_find_value(global.gmscoreboard_scores, i);
//		var feedback = item[? "player"];
//		var feedback_index = item[? "score"];
//		if keyboard_check_pressed(vk_tab){
			
//			//draw a string of the data.
//			draw_text(20,110+(20*i), string(i+1)+ ". " + feedback + " " + string(feedback_index));
//			repeat(feedback){
//				var xx = irandom(room_width)
//				var yy = irandom(room_height)
//				instance_create_depth(xx,yy, -10, obj_feedback)
//			}
//		}
//	}
	
//}
	

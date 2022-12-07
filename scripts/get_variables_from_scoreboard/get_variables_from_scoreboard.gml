/// @description opens your scoreboard page in a browser. Recommend changing this script to use the more readable viewUrl from your account dashboard at gmscoreboard.com
function get_variables_from_scoreboard(){ //values to overwritw with
	
get_scores(6); // retrive current scores

//save variables to a list
if !ds_list_empty(global.gmscoreboard_scores){
	variable_list[0] = ds_list_find_value(global.gmscoreboard_scores, 0)[? "player"];
	variable_list[1] = ds_list_find_value(global.gmscoreboard_scores, 1)[? "player"];
	variable_list[2] = ds_list_find_value(global.gmscoreboard_scores, 2)[? "player"];
	variable_list[3] = ds_list_find_value(global.gmscoreboard_scores, 3)[? "player"];
	variable_list[4] = ds_list_find_value(global.gmscoreboard_scores, 4)[? "player"];
	variable_list[5] = ds_list_find_value(global.gmscoreboard_scores, 5)[? "player"];


	
	//set variables from the server
	global.difficulty = variable_list[0]/100
	global.map_size = variable_list[1]/100
	global.enemy_number = variable_list[2]/100
	global.enemy_speed = variable_list[3]/100
	global.player_lives = variable_list[4]/100
	global.player_speed = variable_list[5]/100

	show_message("Scores retrieved")
}
}
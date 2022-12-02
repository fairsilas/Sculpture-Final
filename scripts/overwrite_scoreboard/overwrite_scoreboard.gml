/// @description opens your scoreboard page in a browser. Recommend changing this script to use the more readable viewUrl from your account dashboard at gmscoreboard.com
function overwrite_scoreboard(){ //values to overwritw with
get_scores(6); // retrive current scores
var overwrite_index = 1;

//find index to replace and add one so that it overides those scores
if !ds_list_empty(global.gmscoreboard_scores){
		var item = ds_list_find_value(global.gmscoreboard_scores, 0);
		overwrite_index = item[? "score"]+10;
}

//replace variables
set_score(string(global.difficulty), overwrite_index+5);
set_score(string(global.map_size), overwrite_index+4);
set_score(string(global.enemy_number), overwrite_index+3);
set_score(string(global.enemy_speed), overwrite_index+2);
set_score(string(global.enemy_hp), overwrite_index+1);
set_score(string(global.player_speed), overwrite_index);
}


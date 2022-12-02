//this event is required to get the results of http requests made to gmscoreboard.com and check if they are successful.
//you can run code based on the success of http request, when a score is set a message will show.
//when get_scores is run, this script will create a ds_list of score data in the global.gmscoreboard_scores variable.

if ds_map_find_value(async_load, "id") == global.gmscoreboard_response{
	if ds_map_find_value(async_load, "status") == 0{
		result = json_decode(ds_map_find_value(async_load, "result"));

		status = result[? "status"];
		type = result[? "type"];
		error = result[? "message"];
		
		//on set-score request
		if type == "set-score"{
			if status == "success"{
				show_debug_message("Score entered!");
				get_scores(5); //update score data.
			}
			if status == "duplicate"{
				show_debug_message(error);	
			}
			if status == "error"{
				show_message(error);	
			}
		}
		
		//on get-score request
		if type == "get-scores"{
			if status == "success"{
				global.gmscoreboard_scores = result[? "scores"];
			}else{
				show_message(error);
			}
		}
	
	}
}

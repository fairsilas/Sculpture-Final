//create global game variables to be adjusted
global.difficulty = 1
global.map_size = 1
global.enemy_number = 1
global.enemy_speed = 1
global.player_lives = 1
global.player_speed = 1

global.score = 0
global.lives = 10
global.key = false
depth = -10000
game_set_speed(60, gamespeed_fps);
room_speed = 60;

/* 
	first create an account at https://gmscoreboard.com
	Then login and create a scoreboard for your account. 
	Copy the tagid of your scoreboard from the website and replace the code below using your tagid
	setup_gmscoreboard("tagid goes here");
*/ 

//this tag is for the Example scoreboard, replace with your tagid.
setup_gmscoreboard("81ec7b0f2a52dfd68ec6f1350143bbd3");


//feel free to edit this object or create your own object to process gmscoreboard api requests.


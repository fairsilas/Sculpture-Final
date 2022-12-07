random_set_seed(global.score)
//randomize()

var steps =  500*global.map_size; //bigger number = more floor tiles
var enemies = round(1*(global.enemy_number*2));

// get the tile layer map ID
var wall_map_id = layer_tilemap_get_id("wall_tiles");

//set up grid
width = room_width div CELL_WIDTH;
height = room_height div CELL_HEIGHT;
grid = ds_grid_create(width, height);
//convert room to grid of 32x32 sections
ds_grid_set_region(grid, 0, 0, width, height, VOID);

//create the controller in the center of the grid
var controller_x = width div 2 
var controller_y = height div 2
var controller_direction = choose(0, 90, 180, 270); //chooses random  4 direction


var direction_change_odds = 0; 
repeat (steps){
	grid[# controller_x, controller_y] = FLOOR;
	
	//if the odds are right change direction
	if (irandom(direction_change_odds) == direction_change_odds){
		var prev_dir = controller_direction
		while (prev_dir = controller_direction){
			controller_direction = choose(0, 90, 180, 270);
		}
		
		
	}
	
	var x_direction = lengthdir_x(1, controller_direction);
	var y_direction = lengthdir_y(1, controller_direction);
	controller_x += x_direction;
	controller_y += y_direction;
	
	// make sure we don't go outside the grid
	if (controller_x < 2 or controller_x >= width -2) {
		controller_x += -x_direction * 2;
	}

	if (controller_y < 2 or controller_y >= height -2) {
		controller_y += -y_direction * 2;
	}
	
}
var floorCount =0
//place tiles
for (var yy = 1; yy < height -1; yy++){
	for (var xx = 1; xx < width -1; xx++){
		if (grid[# xx, yy] != FLOOR){
			//shows which tiles are empty around
				var north_tile = grid[# xx, yy-1] == VOID; //true or false
				var west_tile = grid[# xx-1, yy] == VOID;
				var east_tile = grid[# xx+1, yy] == VOID;
				var south_tile = grid[# xx, yy+1] == VOID;
				show_debug_message(south_tile)
				var tile_index = (NORTH*north_tile + WEST*west_tile + EAST * east_tile+SOUTH *south_tile)+1;
				if (tile_index == 1){
					if grid[# xx, yy+1] == FLOOR{
						grid[# xx, yy] = WALL
					}
					grid[# xx, yy] = FLOOR
					floorCount ++
				}
		}
	}
}

for (var yy = 1; yy < height -1; yy++){
	for (var xx = 1; xx < width -1; xx++){
		//walls next to floor
		if (grid[# xx, yy] != FLOOR)and(grid[# xx, yy+1] == FLOOR){
			with(instance_create_depth(xx*CELL_WIDTH,yy*CELL_HEIGHT, -10,obj_wall)){
				sprite_index = spr_wall_side
			}
		}else if (grid[# xx, yy] != FLOOR){	
			instance_create_depth(xx*CELL_WIDTH,yy*CELL_HEIGHT, -10,obj_wall)
		}else{
			instance_create_depth(xx*CELL_WIDTH,yy*CELL_HEIGHT, 1000,obj_floor)
			// add code here to create things on floor blocks
			var p_pos = false;
				//
			if (p_pos = false and instance_exists(obj_player)){
				obj_player.x = xx*CELL_WIDTH+8
				obj_player.y = yy*CELL_HEIGHT+12
			}
			//create enemies randomly
			if (irandom(floorCount-(instance_number(obj_floor)/2) <= enemies)and instance_number(obj_enemy) <= enemies){
				instance_create_depth(xx*CELL_WIDTH+8,yy*CELL_HEIGHT+14,-yy,obj_enemy)
			}
			
			//create the door
			if (irandom(floorCount- (instance_number(obj_floor)/2) <= 1)and instance_number(obj_door) < 1){
				instance_create_depth(xx*CELL_WIDTH,yy*CELL_HEIGHT,-yy,obj_door)
			}
				//create the key
			if (irandom(floorCount- (instance_number(obj_floor)/2) <= 1 )and instance_number(obj_key) < 1){
				instance_create_depth(xx*CELL_WIDTH,yy*CELL_HEIGHT,-yy,obj_key)
			}
			
		}
	}
}


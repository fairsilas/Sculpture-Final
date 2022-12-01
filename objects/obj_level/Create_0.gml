randomize()
//#macro CELL_WIDTH 32
//#macro CELL_HEIGHT 32
//#macro FLOOR -5
//#macro WALL -6
//#macro VOID -7

//#macro NORTH 1
//#macro WEST 2
//#macro EAST 4
//#macro SOUTH 5

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
var steps =  600; //bigger number = more floor tiles

var direction_change_odds = 1;
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
					
				}
		}
	}
}

for (var yy = 1; yy < height -1; yy++){
	for (var xx = 1; xx < width -1; xx++){
		//walls next to floor
		if (grid[# xx, yy] != FLOOR)and(grid[# xx, yy+1] == FLOOR){
			with(instance_create_depth(xx*32,yy*32, -10,obj_wall)){
				sprite_index = spr_wall_side
			}
		}else if (grid[# xx, yy] != FLOOR){	
			instance_create_depth(xx*32,yy*32, -10,obj_wall)
		}else{
			if irandom(1000) = 1000{
				instance_create_depth(xx*32,yy*32,-yy,obj_chest)
			}
			// add code here to create things on floor blocks
		}
	}
}

// Check if the player is touching the door and if the key has been picked up
if place_meeting(x, y, obj_player) and global.key == true {
// Decrement the door timer
door_timer--;
} else {
// Otherwise, reset the timer to 10
door_timer = 10;
}

// If the door timer reaches 0
if (door_timer <= 0) {
// Increase the score and set the key to false
global.score++;
global.key = false;

// Restart the room
room_restart();
}

// If the door hasn't been relocated or is colliding with a solid object
if (relocated == false or place_meeting(x, y, obj_solid)) {
// Find the nearest floor tile and set the door's position to it
var inst_f = instance_nearest((x + obj_player.x * 2) / 4, y + (obj_player.y * 2) / 4, obj_floor);
x = inst_f.x;
y = inst_f.y;
relocated = true;
}

// If the door hasn't been relocated
if (relocated == false) {
// Find the nearest floor tile and set the door's position to it
var inst_f = instance_nearest(x, y, obj_floor);
x = inst_f.x;
y = inst_f.y;

// Set relocated to true to prevent this code from running again
relocated = true;
}
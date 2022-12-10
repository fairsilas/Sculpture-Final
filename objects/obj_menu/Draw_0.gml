
// Define the size of the menu screen
var menu_width = 300;
var menu_height = 200;

draw_self()

// Create a font and set it as the current font

draw_set_font(fnt_gui);

// Set the text alignment to center
draw_set_halign(fa_center);

// Set the text color to red
draw_set_color(c_maroon);

// Draw the text at the center of the screen
draw_text(menu_width/2, menu_height/2, game_title);
draw_set_color(c_white);


// Draw the text at the center of the screen
draw_text_transformed(menu_width-64, menu_height-12, "Press enter to play", 0.6, 0.6,0);
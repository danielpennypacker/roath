// This can draw info around the player if needed. 

var x_range = 10;
var y_range = 3;

var top_left_x = x - x_range - (sprite_width / 2 );
var top_left_y = y - y_range - (sprite_height / 2 );

var bottom_right_x = x + x_range + (sprite_width / 2 );
var bottom_right_y = y + y_range + (sprite_height / 2 );

// draw_rectangle(top_left_x, top_left_y, bottom_right_x, bottom_right_y, true);	

// debug_box(image_index);
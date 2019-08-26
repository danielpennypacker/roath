var text = argument0;

var x_range = 10;
var y_range = 3;

var top_left_x = x - x_range - (sprite_width / 2 );
var top_left_y = y - y_range - (sprite_height / 2 );

var bottom_right_x = x + x_range + (sprite_width / 2 );
var bottom_right_y = y + y_range + (sprite_height / 2 );


draw_text(top_left_x, bottom_right_y, text);



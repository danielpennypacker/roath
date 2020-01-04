/// @desc For drawing control hints
/// @param x_start
/// @param y_start
/// @param text

var x_start = argument0;
var y_start = argument1;
var text = argument2;

var BOX_WIDTH = 75;
var BOX_HEIGHT = 35;

draw_set_color(c_ltgray);
draw_rectangle(
x_start, y_start, 
x_start + BOX_WIDTH, y_start + BOX_HEIGHT, false);			

draw_set_color(c_navy);
draw_text_ext(
	x_start + 5, y_start + 5, text, 
	BOX_HEIGHT, BOX_WIDTH - 10
);
draw_set_color(c_black);	
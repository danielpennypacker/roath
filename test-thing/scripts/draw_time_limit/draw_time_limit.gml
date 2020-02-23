
var padding = 30;
var base_height = VIEW_HEIGHT + TEXT_BOX_HEIGHT + 50;
var line_width = 5;

draw_set_color(c_gray);
draw_rectangle(
	padding, base_height + padding, 
	GAME_WIDTH, base_height + line_width + padding, 
	false
);	
var precent_time_passed = (timer/MAX_GAME_TIME) ;

if (timer/MAX_GAME_TIME >= 1) {
	precent_time_passed = 1;
}


if (speaker) {
	draw_set_color(c_gray);
} else {
	draw_set_color(c_yellow);
}

draw_circle(
	padding + (precent_time_passed * GAME_WIDTH),
	base_height + padding + 5,
	10,
	false
)
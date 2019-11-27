/// @description Draw Fadeout

var fade_speed = 0.01;
draw_set_color(c_black);
draw_set_alpha(image_alpha);

/*
if(room != target) {
	image_alpha += fade_speed;
	if(image_alpha == 1) {
		obj_player.x = xx;
		obj_player.y = yy;
		room_goto(target);
	}
} else {
	
}
*/
image_alpha += fade_speed;	

draw_rectangle(0, 0, view_wport*2, view_hport*2, false);
draw_set_alpha(1);
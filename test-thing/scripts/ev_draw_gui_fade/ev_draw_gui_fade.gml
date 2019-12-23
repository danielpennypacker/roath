/// @description Draw Fadeout
var fade_speed = 0.1;
image_alpha += fade_speed;
draw_set_color(c_black);
draw_set_alpha(image_alpha);
draw_rectangle(0, 0, view_wport*2, view_hport*2, false);
if (image_alpha > 1) {
	fadeout_complete = true;
}

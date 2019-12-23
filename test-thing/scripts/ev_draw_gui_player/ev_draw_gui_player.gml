if (!instance_exists(obj_fade)) {	
	draw_text_box();
	draw_inventory();
	draw_time_limit();	
} else {
	if(fadeout_complete) {
		draw_ending();		
	}
	
}	

if(self == speaker) {
	// show_debug_message("-- ev_draw_findable:is_speaker --")	
	object_set_visible(self, true); 	
//	draw_sprite(spr_eye, 0, x, y - 20);	
	draw_self();
} else {
	object_set_visible(self, false) 	
}


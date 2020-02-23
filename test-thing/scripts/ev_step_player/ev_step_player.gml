depth = -y

if (!instance_exists(obj_fade)) {	
	set_owned_items_array()
	get_input();
	set_sprite_face();
	check_speaker();	
	check_for_game_end();
} else {
	get_ending_input();
}

if(!speaker) {
	timer = timer +1;
}

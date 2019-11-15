
speed = 0;
image_speed = 0;

// -- Handle Arrow Keys
// ----- Move character
if(keyboard_check(vk_right)) {
	direction = 0;
}
if(keyboard_check(vk_up)) {	
	direction = 90;	
}
if(keyboard_check(vk_left)) {	
	direction = 180;	
}
if(keyboard_check(vk_down)) {	
	direction = 270;	
}	
if( keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_left) || keyboard_check(vk_down)) {
	speed = 1.5;
	image_speed = 1;
}	

// -- Toggle inventory menu
if(keyboard_check_pressed(vk_shift)) {	
	// ----- Move Inventory cursor	
	var owned_items_size = array_length_1d(owned_items_array);
	items_index += 1;
	if(items_index >= owned_items_size) {
		items_index = 0;
	}	
}

// -- Give item to an npc
if(keyboard_check_pressed(vk_enter)) {
	if(speaker_is_npc()){
		player_give_item_to_npc(speaker);	
	}
	// show_debug_message("-- get_input:3:speaker");
	// show_debug_message(speaker);
	var is_findable = speaker_is_findable();

	// show_debug_message("-- get_input:3:is_findable");
	// show_debug_message(is_findable);
	if(is_findable){	
		show_debug_message(speaker);		
		player_take_findable(speaker);		
	}
}

// -- Handle Talking 
if(speaker_is_npc() && keyboard_check_pressed(vk_space)) {		
	player_speak_to_npc(speaker)
}	

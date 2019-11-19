// All of the key board inputs are handled in this file. 

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

// ----- Move Inventory cursor	
if(keyboard_check_pressed(vk_shift)) {		
	var owned_items_size = array_length_1d(owned_items_array);
	items_index += 1;
	if(items_index >= owned_items_size) {
		items_index = 0;
	}	
}


if(keyboard_check_pressed(vk_enter)) {
	if(speaker_is_npc()){
		// -- Give item to an npc
		player_give_item_to_npc(speaker);	
	}

	// If player is standing next to a findable item, 
	// enter is used to pick the item up.
	var is_findable = speaker_is_findable();
	if(is_findable){	
		show_debug_message(speaker);		
		player_take_findable(speaker);		
	}
}

// -- Handle Talking 
if(speaker_is_npc() && keyboard_check_pressed(vk_space)) {		
	player_speak_to_npc(speaker)
}	

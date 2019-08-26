
speed = 0;
image_speed = 0;

// -- Handle Arrow Keys
if(!show_inventory) {
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
} else {
	// ----- Move Inventory cursor	
	var owned_items_size = array_length_1d(owned_items_array);	
	if(keyboard_check_pressed(vk_up)) {	
		items_index -= 1;
		if(items_index < 0) {
			items_index = owned_items_size -1;
		}
	}	
	if(keyboard_check_pressed(vk_down)) {	
		items_index += 1;
		if(items_index >= owned_items_size) {
			items_index = 0;
		}
	} 	
}

// -- Toggle inventory menu
if(keyboard_check_pressed(ord("2"))) {	
	show_inventory = !show_inventory;
	items_index = 0;
}

// -- Give item to an npc
if(keyboard_check_pressed(ord("3"))) {
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
if(speaker_is_npc() && keyboard_check_pressed(ord("1"))) {		
	player_speak_to_npc(speaker)
}	

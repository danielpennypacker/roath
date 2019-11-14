var base_width = 300;	
var box_height = 645;
var text_padding = 10;
var line_height =  35;	
var starting_x = 660;
var starting_y = 10;

// background box of the inventory
draw_set_color(c_white);			
draw_rectangle(
	starting_x, 
	starting_y, 
	starting_x + base_width, 
	starting_y + box_height, 
	false
);		

if(show_inventory) {
	var default_color = c_black;
} else {
	var default_color = c_gray;
}


draw_set_font(fnt_small);

draw_set_color(default_color);	
		
var inventory_text = "Inventory - Shift to toggle\n---------------";
draw_text_ext(
	starting_x + text_padding, 
	starting_y + text_padding, 
	inventory_text,
	line_height, 
	base_width - text_padding
);	
	
var items_size = array_length_1d(owned_items_array);
for(var i = 0; i < items_size; i++) { 
	var item = owned_items_array[i];						
	var line_text = "\n" + pretty_item_name(item);		
	// add a pointer arrow to the current item
	if(items_index == i && show_inventory) {
		line_text = line_text + "<="				
	}		
	// set the color if the speaker will take it. 
	if(speaker and speaker_is_npc()) {
		
		// speaker is giving the player the current item
		// listed in the inventory
		if( speaker.giving_item 
			&& (item == npc_get_item_to_give(speaker))
		) {
			draw_set_color(c_orange);	
		} else if(ds_map_exists(speaker.speech_map, item) 
			&& speaker.has_introduced
			&& !speaker.giving_item
		) {			
			draw_set_color(c_blue);	
			if(items_index == i && show_inventory) {
				line_text = line_text + " - Enter to give"
			}			
		} else {
			draw_set_color(default_color);	
		}			
	}			
	draw_text_ext(
		starting_x + text_padding, 
		starting_y + text_padding + ( (  1 + i ) * line_height ), 
		line_text,
		line_height, 
		base_width - text_padding
	);						
}		




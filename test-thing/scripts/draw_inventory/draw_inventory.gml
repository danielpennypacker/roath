var base_width = 300;	
var box_height = 500;
var text_padding = 10;
var line_height =  35;			

if (show_inventory) {	
	// background box of the inventory
	draw_set_color(c_white);			
	draw_rectangle(10, 10, base_width, box_height, false);		
	draw_set_font(fnt_small);
	draw_set_color(c_black);	
		
	var inventory_text = "Inventory\n---------------";
	draw_text_ext(
		10 + text_padding, 
		10 + text_padding, 
		inventory_text,
		line_height, 
		base_width - text_padding
	);	


	
	var items_size = array_length_1d(owned_items_array);
	for(var i = 0; i < items_size; i++) { 
		var item = owned_items_array[i];						
		var line_text = "\n" + pretty_item_name(item);		
		// add a pointer arrow to the current item
		if(items_index == i) {
			line_text = line_text + "<="				
		}		
		// set the color if the speaker will take it. 
		if(speaker and speaker_is_npc()) {							
			if(ds_map_exists(speaker.speech_map, item)) {
				draw_set_color(c_blue);	
			} else {
				draw_set_color(c_black);	
			}			
		}			
		draw_text_ext(
			10 + text_padding, 
			10 + text_padding + ( (  1 + i ) * line_height ), 
			line_text,
			line_height, 
			base_width - text_padding
		);						
	}		
}




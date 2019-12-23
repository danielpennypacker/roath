// This draws the inventory box on the right side of the screen

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

// vars for remember where to draw the help text box
var should_draw_help = false;
var help_y = 0;

var default_color = c_black;
draw_set_font(fnt_small);
draw_set_color(default_color);	
		
var inventory_text = "Inventory";
draw_text_ext(
	starting_x + text_padding, 
	starting_y + text_padding, 
	inventory_text,
	line_height, 
	base_width - text_padding
);		

var items_size = array_length_1d(owned_items_array);

if(items_size > 1) {
	draw_help_text_box(
		starting_x + text_padding + 100, 
		starting_y + text_padding, 
		"Shift to Select",
	)
}

for(var i = 0; i < items_size; i++) { 
	var item = owned_items_array[i];						
	var line_text = pretty_item_name(item);		
	// add a pointer arrow to the current item
	if(items_index == i) {
		line_text =  " - " + line_text; 
	} else {
		line_text = "  " + line_text;
	}		
	
	// calculate if the NPC will accept the current item.
	var npc_wants_item = false;
		
	// set the color of the text. 
	if(speaker and speaker_is_npc()) {				
		npc_wants_item = (
			ds_map_exists(speaker.speech_map, item) 
			&& speaker.has_introduced
			&& !speaker.giving_item
		)
		
		// speaker is giving the player the current item
		// listed in the inventory
		if( speaker.giving_item 
			&& (item == npc_get_item_to_give(speaker))
		) {
			draw_set_color(c_orange);	
		} else if(npc_wants_item) {			
			draw_set_color(c_blue);				
		} else {
			draw_set_color(default_color);	
		}			
	}	
	
	// draw the actual line of text
	line_text = line_text + "\n";
	var line_y = starting_y + 20 + text_padding + ( (  1 + i ) * line_height )
	var line_x = starting_x + text_padding;
	draw_text_ext(
		line_x, line_y, 
		line_text,
		line_height, 
		base_width - text_padding
	);		
	
	// help text
	if(items_index == i && npc_wants_item) {		
		should_draw_help = true;
		help_y = line_y		
	}				
}		

// -- Draw the help text. Has to come last so it's on top of other
// text
if(should_draw_help){
	draw_help_text_box(line_x, help_y + line_height - 10,
		"Return to Give"
	)
}	

// --- Display the items description
if(items_size > 0){
	var current_item = owned_items_array[items_index]; 			
	var current_text = items_descriptions[? current_item];
	draw_set_color(c_dkgray);	
	draw_text_ext(
		starting_x + text_padding, 
		starting_y + text_padding + 450, 
		current_text,
		line_height, 
		base_width - text_padding
	);		
}

if (! speaker) {return;}


// This draws the inventory box on the right side of the screen
var base_width = 300;	
var box_height = TEXT_BOX_HEIGHT;
var text_padding = 10;
var line_height =  35;	

var starting_x = 660;
var starting_y = TEXT_BOX_START- TEXT_BOX_HEIGHT;

var text_padding = 20;
var line_height =  35;


var HELP_X = 200;


// vars for remember where to draw the help text box
var should_draw_help = false;
var help_y = 0;

var default_color = c_black;
draw_set_font(fnt_small);
draw_set_color(default_color);	
		
var items_size = array_length_1d(owned_items_array);

// Title Box of the inventory
draw_set_color(c_gray);
draw_rectangle(starting_x, TEXT_BOX_START-(box_height + line_height), 
				starting_x + base_width, starting_y + box_height, false);
draw_set_color(c_white);
draw_text_ext(
	starting_x + text_padding, TEXT_BOX_START-box_height - line_height + 5 ,
	"Inventory" ,line_height, base_width-text_padding
);
draw_set_color(c_white);

// background box of the inventory
draw_rectangle(
	starting_x, 
	starting_y, 
	starting_x + base_width, 
	starting_y + box_height, 
	false
);		

// Instructions for "shift" to cycle
if (items_size > 1) {
	draw_help_text_box(
		starting_x + base_width - 75, 
		starting_y + box_height - line_height, 
		"Shift",
	)
}

for(var i = 0; i < items_size; i++) { 
	var item = owned_items_array[i];						
	var line_text = pretty_item_name(item);		
	var current_text_color = default_color;
			
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
			current_text_color = c_orange;
		} else if(npc_wants_item) {			
			current_text_color = c_blue;
		} 			
	}	
	
	// Calc current line height.	
	var line_y = starting_y + ( i * line_height ) + text_padding
	var line_x = starting_x + text_padding;
		
	// draw the inventory name.
	draw_set_color(current_text_color);	
	draw_text_ext(
		line_x, line_y, 
		line_text,
		line_height, 
		base_width - text_padding
	);		
	
	// Underline selected item/
	if(items_index == i) {	
		draw_set_color(c_ltgray);	
		draw_rectangle(
			line_x - 5, 
			line_y, 
			line_x + 200, 
			line_y + line_height - 5, 
			true
		);				
	}
		
	// help text
	if(items_index == i && npc_wants_item) {		
		should_draw_help = true;
		help_y = line_y		
	}				
}		

// -- Draw the help text. Has to come last so it's on top of other
// text
if(should_draw_help){
	draw_help_text_box(line_x + HELP_X, help_y,
		"Return"
	)
}	


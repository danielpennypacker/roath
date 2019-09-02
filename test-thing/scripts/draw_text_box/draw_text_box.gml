			
var base_width = 1040;
var base_height = 555;		
var box_height = 120;
var text_padding = 10;
var line_height =  35;		
	
draw_set_font(fnt_small);
	
var current_text = "";
var current_title = "";
	
// show_debug_message("-- draw_text_box:speaker_is_npc -- ");	
// show_debug_message(speaker_is_npc())

// default color for the title box.
draw_set_color(c_gray);

if (!speaker) {			
	current_title = "Instructions"
	current_text = "\nUse the arrow keys to move around. \nMove next to characters to talk to them"
} else {	
	if(speaker_is_npc()) {						
		var speech_list = npc_get_speech(speaker);							
		var speech_desc = string(speaker.speech_index + 1);	
		if(speaker.giving_item) {
			draw_set_color(c_orange);			
			speech_desc	= "Giving you a " + pretty_item_name(npc_get_item_to_give(speaker)) + "!"
		} else if (speaker.current_speech_key != NO_TAKEN_ITEM) {		
			// If npc has accetped an item, tell the player. Only shows the most recently given item
			speech_desc = "Accepted " + pretty_item_name(speaker.current_speech_key) + " - " + speech_desc;
		}			
		current_title = speaker.role + " - " + speech_desc + " - Space to advance" ;			
		current_text = speech_list[speaker.speech_index];
	}		
	if(speaker_is_sign()) {		
		current_title = "Sign - Space to advance"
		current_text = "\n"+ speaker.text;
	}		
	if(speaker_is_findable()) {		
		current_title = "Item on ground - Enter to pickup."
		current_text = "\n"+ speaker.text;
	}		
}

//title box - Text is in var "current_title".		
draw_rectangle(0, base_height-(box_height + line_height), base_width, base_height, false);			
draw_set_color(c_white);		
draw_text_ext(
	10 + text_padding, base_height-box_height - line_height + 5 ,
	current_title ,line_height, base_width-text_padding
);
draw_set_color(c_white);			

//text box - Text is in var "current_text".		
draw_rectangle(0, base_height-box_height, base_width, base_height, false);			
draw_set_color(c_black);	
draw_text_ext(
	10 + text_padding, base_height-box_height - 20, 
	current_text ,line_height, base_width-text_padding
);
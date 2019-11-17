var base_width = 640;
var base_height = 655;		
var box_height = 200;
var text_padding = 20;
var line_height =  35;		
	
draw_set_font(fnt_small);
var current_text = "";
var current_title = "";
	
draw_set_color(c_gray);
if (speaker) {	
	if(speaker_is_npc()) {						
		var speech_list = npc_get_speech(speaker);							
		var speech_desc = "";	
		if(speaker.giving_item) {
			draw_set_color(c_orange);			
			speech_desc	= "Giving you a " + pretty_item_name(npc_get_item_to_give(speaker)) + "!"
		} else if (npc_has_accepted_item(speaker)) {		
			draw_set_color(c_green);
			speech_desc = "Accepted " + pretty_item_name(speaker.current_speech_key) + " - " + speech_desc;
		}			
		current_title = speaker.role + " - " + speech_desc + " - Space to advance" ;			
		current_text = speech_list[speaker.speech_index];
	}		
	if(speaker_is_sign()) {		
		current_title = "Sign"
		current_text = speaker.text;
	}		
	if(speaker_is_findable()) {
		current_title = "Item on ground - Enter to pickup."
		current_text = speaker.text;
	}
} else {
	current_title = "Instructions"
	current_text = "Move next to characters to talk to them.\nArrow Keys: move around.\nSpace: advance text.\nShift: select inventory\nEnter: Give/Pickup items."           
}

//title box - Text is in var "current_title".		
draw_rectangle(0, base_height-(box_height + line_height), base_width, base_height, false);
draw_set_color(c_white);
draw_text_ext(
	text_padding, base_height-box_height - line_height + 5 ,
	current_title ,line_height, base_width-text_padding
);
draw_set_color(c_white);

current_text = "\n" + current_text;
//text box - Text is in var "current_text".		
draw_rectangle(0, base_height-box_height, base_width, base_height, false);			
if (speaker) {	
	draw_set_color(c_black);	
} else {
	draw_set_color(c_gray);	
}		
draw_text_ext(
	text_padding, base_height-box_height - text_padding, 
	current_text ,line_height, base_width-text_padding
);
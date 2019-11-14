draw_self();
npc_debug();

// -- Drawing the speech bubble over their heads. 
var npc = self;

var light_grey = !npc.has_encountered;
var dark_grey = !npc.has_introduced;
var gold = npc.giving_item;
var blue = npc_can_take_item(npc) && npc.has_introduced;
var green = npc_has_accepted_item(npc);
var blue_green = (blue && green);

if( speaker == npc) {
	var bubble_sprite = speech_bubble;
	if(dark_grey) {
		bubble_sprite = speech_bubble_light_grey;
	} else if(gold) {		
		bubble_sprite = speech_bubble_gold;	
	} else if(blue_green) {
		bubble_sprite = speech_bubble_blue_green;	
	} else if(blue) {		
		bubble_sprite = speech_bubble_blue;	
	} else if(green) {
		bubble_sprite = speech_bubble_green;
	}	
	
	draw_sprite(bubble_sprite, npc.speech_index, x, y - 20)
} else {
	// -- Drawing the thought bubble over their heads. 
	var bubble_sprite = thought_bubble;
	if(light_grey) {
		return;
	} else if(dark_grey) {
		bubble_sprite = thought_bubble_light_grey;	
	} else if(blue_green) {
		bubble_sprite = thought_bubble_blue_green;	
	}  else if(blue) {
		bubble_sprite = thought_bubble_blue;
	} else if(green) {
		bubble_sprite = thought_bubble_green;
	}	
	draw_sprite(bubble_sprite, 0, x, y - 20)
}
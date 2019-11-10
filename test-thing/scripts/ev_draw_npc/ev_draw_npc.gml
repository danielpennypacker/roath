draw_self();
npc_debug();

// -- Drawing the speech bubble over their heads. 
var npc = self;
if( speaker == npc) {
	var bubble_sprite = speech_bubble;
	if(!npc.has_introduced) {
		bubble_sprite = speech_bubble_light_grey;
	} else if(npc_can_take_item(npc) && npc.has_introduced) {		
		bubble_sprite = speech_bubble_blue;
	} else if(npc_has_accepted_item(npc)) {
		bubble_sprite = speech_bubble_green;
	}	
	draw_sprite(bubble_sprite, 0, x, y - 20)
} else {
// -- Drawing the thought bubble over their heads. 
	var bubble_sprite = thought_bubble;
	if(!npc.has_encountered) {
		bubble_sprite = thought_bubble_grey;
	} else if(!npc.has_introduced) {
		bubble_sprite = thought_bubble_light_grey;
	} else if(npc_can_take_item(npc) && npc.has_introduced) {
		bubble_sprite = thought_bubble_blue;
	} else if(npc_has_accepted_item(npc)) {
		bubble_sprite = thought_bubble_green;
	}	
	draw_sprite(bubble_sprite, 0, x, y - 20)
}
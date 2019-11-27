// -- Drawing the icon over the NPC's head
draw_self();
npc_debug();

var npc = self;
var speech_sprite = speech_bubble_light_grey;
var thought_sprite = thought_bubble_light_grey;

if(!npc.has_introduced) {
	speech_sprite = speech_bubble;
	thought_sprite = false;
} else if(npc.giving_item) {		
	speech_sprite = speech_bubble_gold;	
	thought_sprite = false;
} else if(npc_can_take_item(npc) && npc.has_introduced && npc_has_accepted_item(npc)) {
	speech_sprite = speech_bubble_blue_green;	
	thought_sprite = thought_bubble_blue_green;
} else if(npc_can_take_item(npc) && npc.has_introduced) {		
	speech_sprite = speech_bubble_blue;	
	thought_sprite = thought_bubble_blue;
} else if(npc_has_accepted_item(npc)) {
	speech_sprite = speech_bubble_green;
	thought_sprite = thought_bubble_green;
}

if( speaker == npc) {	
	draw_sprite(speech_sprite, npc.speech_index, x, y - 20)
} else if(thought_sprite) {	
	draw_sprite(thought_sprite, 0, x, y - 20)
}
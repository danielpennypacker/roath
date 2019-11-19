// Gets called when the player gives an item to an NPC.

var npc = argument0;
var current_item = owned_items_array[items_index];
if(npc && ds_map_exists(npc.speech_map, current_item)) {		
	// update the NPC.
	npc.current_speech_key = current_item
	npc.taken_items[? current_item] = true;
	npc.speech_index = 0;	

	// Update the player / global vars.
	items_map[? current_item] = false;
	items_index = 0;	
}
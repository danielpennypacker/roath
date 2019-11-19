// handle the player advancing the NPC's speech. 

var npc = argument0;

if(npc) {
	
	if(npc.giving_item){
		// if the item has been given, reset back to the current speech list.		
		npc.speech_index = -1;
		npc.giving_item = false;
	}	
	var speech_list = npc_get_speech(npc);

	// If the player has reached the end of the current line of speech.
	if(npc.speech_index == array_length_1d(speech_list) - 1){
		
		// -- Player has seen first lines of NPC's speech, they are
		// "introduced" and player can see their list of items.
		npc.has_introduced = true;
		
		// -- NPC's give items at the end of their speech.
		if(ds_map_exists(npc.giving_map, npc.current_speech_key)
		   && (npc_get_item_to_give(npc) != NULL_ITEM)
		   && !ds_map_exists(npc.given_items, npc_get_item_to_give(npc)) ) {
			   
			npc_give_item_to_player(npc);
		} else {
			// --- Cycle back to the first line of the current speech list 			
			npc.speech_index = 0;				
		}				
	} else {			
		// -- Advance the speech to the next item as normal.
		npc.speech_index += 1;			
	}
}
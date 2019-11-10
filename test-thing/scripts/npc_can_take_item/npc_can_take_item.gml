var npc = argument0
var can_take_item = false;
var items_size = array_length_1d(owned_items_array);
for(var i = 0; i < items_size; i++) { 
	var item = owned_items_array[i];	
	
	show_debug_message("npc.speech_map")
	show_debug_message(npc.speech_map)
	show_debug_message("item")
	show_debug_message(item)
	
	if(ds_map_exists(npc.speech_map, item)) {		
		can_take_item = true;
	}					
}		
return can_take_item;
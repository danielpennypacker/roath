var npc = argument0;
var current_item = owned_items_array[items_index];
if(npc 
	&& show_inventory 
	&& ds_map_exists(npc.speech_map, current_item)) {
		
	npc.current_speech_key = current_item
	npc.taken_items[? current_item] = true;
	items_map[? current_item] = false;
	npc.speech_index = 0;
}
var findable = argument0;

show_debug_message("-- player_take_item:findable");
show_debug_message(findable);
if(findable.item != NULL_ITEM) {
	speaker = false;
	items_map[? findable.item] = true;
	instance_destroy(findable);	
}

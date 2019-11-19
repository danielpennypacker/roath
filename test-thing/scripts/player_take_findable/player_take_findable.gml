// A player is picking up an item.

var findable = argument0;
if(findable.item != NULL_ITEM) {
	// update the player
	speaker = false;
	items_map[? findable.item] = true;
	
	// remove the findable.
	instance_destroy(findable);	
}

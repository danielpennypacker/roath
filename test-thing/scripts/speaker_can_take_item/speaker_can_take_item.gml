var can_take_item = false;
var items_size = array_length_1d(owned_items_array);
for(var i = 0; i < items_size; i++) { 
	var item = owned_items_array[i];											
	if(ds_map_exists(speaker.speech_map, item)) {		
		can_take_item = true;
	}					
}		
return can_take_item;
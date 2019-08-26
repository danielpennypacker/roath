owned_items_array = [];
var i = 0;
for (var k = ds_map_find_first(items_map); !is_undefined(k); k = ds_map_find_next(items_map, k)) {	  	
	if (items_map[? k]){
		owned_items_array[i] = string(k);
		i += 1;
	}	
}
owned_items_array = array_sort(owned_items_array, true);	
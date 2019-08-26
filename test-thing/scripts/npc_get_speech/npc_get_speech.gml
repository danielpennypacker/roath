var npc = argument0;

var speech_list;

// show_debug_message("-- npc_get_speech:current_speach_key --");
// show_debug_message(npc.current_speech_key);

// show_debug_message("-- npc_get_speech:giving_item -- ");
// show_debug_message(npc.giving_item);

if(npc.giving_item) {
	speech_list = npc.speech_map[? GIVING_ITEM + npc.current_speech_key];
} else {
	speech_list = npc.speech_map[? npc.current_speech_key];
}

// show_debug_message("-- speech_list --");
// show_debug_message(speech_list);

return speech_list

// Determine which list of speach an NPC should be speaking. 

var npc = argument0;

var speech_list;
if(npc.giving_item) {
	speech_list = npc.speech_map[? GIVING_ITEM + npc.current_speech_key];
} else {
	speech_list = npc.speech_map[? npc.current_speech_key];
}

return speech_list

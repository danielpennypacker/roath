var npc = argument0;

var item_to_give = npc_get_item_to_give(npc)
items_map[? item_to_give] = true;

npc.given_items[? item_to_give] = true;
npc.giving_item = true;
npc.speech_index = 0;


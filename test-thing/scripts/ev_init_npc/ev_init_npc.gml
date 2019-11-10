/// @desc set an object's sprites based on the name given.
state = "standing";
destination = obj_warp;

var name = object_get_name(self.object_index);
name = string_replace(name, "obj_", "");
show_debug_message(name);

// -- Load all of an NPC's sprites
spr_up = asset_get_index("spr_" + name + "_up");
spr_right = asset_get_index( "spr_" + name + "_right") ;
spr_down = asset_get_index( "spr_" + name + "_down") ;
spr_left = asset_get_index( "spr_" + name + "_left") ;

show_debug_message(spr_up);
show_debug_message(spr_right);
show_debug_message(spr_down);
show_debug_message(spr_left);

// Load all the speech and item information for an NPC
var scr_asset = asset_get_index("init_npc_" + name);
show_debug_message(scr_asset);

// ----- State stuff ------
// -- If a player has walked up to this character 
// at least once
has_encountered = false;
// -- If a player has finished the first cycle of dialougue
has_introduced = false;
// Items the player has given the NPC.
taken_items = ds_map_create();
// Items the NPC has given to the player.
given_items = ds_map_create();

// ----- Speech stuff ------
// -- The current index of an NPC's speach list
speech_index = 0;
// -- Whether or not the npc is giving an item.
giving_item = false;
// -- A map of items that an NPC will give and recieve
// If a key points to NULL_ITEM it means they don't give an 
// item at the end of that speech list.
giving_map = ds_map_create();
// -- Keys of arrays that are an NPC's speech based on what item they've been given.
speech_map = ds_map_create();
speech_map[? NO_TAKEN_ITEM] = script_execute(scr_asset);
// The key of the current speech list the NPC is on.
current_speech_key = NO_TAKEN_ITEM;







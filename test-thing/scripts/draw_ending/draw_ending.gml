// TODO - Only bring up characters that have been "introduced" to the player.
var NPC_LIST = [
	obj_accountant,
	obj_ambassador,
	obj_dock_worker,
	obj_historian,
	obj_prostitute,
	obj_gambler,
	obj_chef,
]

if (ending_index >= array_length_1d(NPC_LIST)) {
	// player has gone through all the character endings
	draw_set_color(c_white);
	draw_text_ext(
		20, 20 ,
		"The End",10, 400
	);
	
} else {
	var SPRITE_HEIGHT = 160;
	var npc = NPC_LIST[ending_index];		
	
	// Sprite
	draw_sprite_stretched(
		npc.spr_down,
		0, 10, 10,160, 300
	)
		
	// Name / Role
	var name = npc.role;
	draw_set_color(c_white);
	draw_text_ext(
		20, SPRITE_HEIGHT + 20 + SPRITE_HEIGHT ,
		name, 10, 400
	);
	
	// Text
	var speech_list = npc_get_speech(npc);
	draw_set_color(c_white);
	draw_text_ext(
		20, SPRITE_HEIGHT + 50 + SPRITE_HEIGHT ,
		speech_list[0]  ,10, 400
	);
}


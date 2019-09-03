draw_self();
npc_debug();
if( speaker == self) {
	var bubble_sprite = speech_bubble;
	if(npc_can_take_item(speaker)) {
		bubble_sprite = speech_bubble_blue;
	} else if(npc_has_accepted_item(speaker)) {
		bubble_sprite = speech_bubble_green;
	}	
	draw_sprite(bubble_sprite, 0, x, y - 20)
}
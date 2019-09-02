draw_self();
npc_debug();
if( speaker == self) {
	var bubble_sprite = speech_bubble;
	if(speaker_can_take_item()) {
		var bubble_sprite = speech_bubble_blue;
	}	
	draw_sprite(bubble_sprite, 0, x, y - 20)
}
/// @desc set which sprite index a character should have 
var final_direction = direction;
if(self == speaker) {
	// show_debug_message("-- set_sprite_face:self_is_speaker --")	
	final_direction = point_direction( self.x, self.y, player.x, player.y)
}

// show_debug_message("-- set_sprite_face:final_direction --")
// show_debug_message(final_direction)

switch(round(final_direction/90)){
	case 0: 
		sprite_index = spr_right;
		break;
	case 1: 
		sprite_index = spr_up;
		break;
	case 2: 
		sprite_index = spr_left;
		break;	
	case 3: 
		sprite_index = spr_down;
		break;	
}

// skipps first frme during walking
if(image_index < 1.0 && speed != 0) {
	image_index +=1;	
}
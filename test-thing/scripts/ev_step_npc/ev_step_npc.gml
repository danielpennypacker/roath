// move the NPC
depth = -y
image_speed = 0
if(speaker != self && state == "walking") {
	image_speed = 1
	speed = 0.33;		
	if (image_index == 0) {
		image_index = 1
	}		
	mp_potential_step(destination.x, destination.y,1, false )	
}

set_sprite_face();
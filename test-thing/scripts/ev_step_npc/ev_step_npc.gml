// move the NPC
depth = -y
image_speed = 0

// For now npc's don't 
if(speaker != self && state == "walking") {
	image_speed = 1
	speed = 0.33;		
	if (image_index == 0) {
		image_index = 1
	}		
	mp_potential_step(destination.x, destination.y,1, false )	
}

// decieds which direction of sprite to show. 
set_sprite_face();
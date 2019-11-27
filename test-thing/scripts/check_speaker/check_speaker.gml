// This checks to see if the player is near an 
// NPC, sign, or a findable item. 

var x_range = 10;
var y_range = 3;
var top_left_x = x - x_range - (sprite_width / 2 );
var top_left_y = y - y_range - (sprite_height / 2 );
var bottom_right_x = x + x_range + (sprite_width / 2 );
var bottom_right_y = y + y_range + (sprite_height / 2 );

var is_coliiding = !collision_rectangle( 
	top_left_x, top_left_y, 
	bottom_right_x, bottom_right_y, 
	obj_collidable, false, true
);
if(is_coliiding) {
	speaker.giving_item = false;
	speaker = false;	
} else {
	speaker = instance_nearest(x, y, obj_collidable);
	speaker.has_encountered = true;
}


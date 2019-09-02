/// @desc Draw player

draw_self();
player_debug();

if(show_inventory) {
	draw_sprite(inventory_icon, 0, x, y - 30)
}
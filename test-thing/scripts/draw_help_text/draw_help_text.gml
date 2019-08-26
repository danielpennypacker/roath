var base_width = 300;	
var box_height = 500;
var text_padding = 10;
var line_height =  35;			

// draw_set_color(c_white);			
// draw_rectangle(10, 10, base_width, box_height, false);		
// draw_set_font(fnt_small);
// draw_set_color(c_black);	

if(speaker || show_inventory) {
	var help_text = "Controls\n-----\n1: Advance Speech\n2: Toggle Inventory\n3: Give Item or Pickup Item" 
	draw_set_color(c_white);		
	draw_set_font(fnt_small);
	draw_text_ext(
		700 + text_padding, 
		10 + text_padding, 
		help_text,
		line_height, 
		base_width - text_padding
	);	
}

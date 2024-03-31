

draw_set_font(fnt_gui);
draw_text(x - (sprite_width/2), y - (sprite_width/2) - 16, "Distance: " + string(distance_to_player));
draw_text(x - (sprite_width/2), y - (sprite_width/2) + 12, "Range: " + string(range_to_follow));
if(hit_val > 0){
	draw_text(x - (sprite_width/2), y - (sprite_width/2) + 12 + 23, "HIT: " + string(hit_val));
	draw_text(x - (sprite_width/2), y - (sprite_width/2) + 12 + (23 *2), "DEFEATED! ");
}
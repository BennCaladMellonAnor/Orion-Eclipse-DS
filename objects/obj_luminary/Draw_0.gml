/// @description Insert description here
// You can write your code in this editor
//Refazer ficou uma bosta!!!
if(!surface_exists(shadow_surface)){
	shadow_surface = surface_create(width, height);
	surface_set_target(shadow_surface);
	draw_clear_alpha(c_black, 0);

	surface_reset_target();
}else{
	draw_set_color(c_black);
	
	draw_set_alpha(0.9);
	
	draw_rectangle(0, 0, room_width, room_height, false);
	
	gpu_set_blendmode(bm_subtract);
	
	draw_circle(obj_player.x, obj_player.y, 24, false);

	//Reset
	
	gpu_set_blendmode(bm_normal);
	
	draw_set_alpha(-1);
	
	draw_set_color(-1);	
}

draw_surface(shadow_surface, 0, 0);

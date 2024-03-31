/// @description Insert description here
// You can write your code in this editor

var _radius = 64;

if (!surface_exists(surf)){
	surf = surface_create(width, height);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
	view_surface_id[0] = surf;
}else{
	
	draw_set_color(c_black);
	
	draw_set_alpha(1);
	
	draw_rectangle(0, 0, width, height, false);
	
	draw_set_color(c_white);
	
	gpu_set_blendmode(bm_subtract);
	
	draw_circle_color(obj_player.x, obj_player.y, _radius + irandom(1), c_white, c_white, false);
	
	draw_set_alpha(.5);
	
	draw_circle(obj_player.x, obj_player.y, _radius + 16 + irandom(1), false);
	
	draw_set_alpha(1);

	gpu_set_blendmode(bm_normal)

}	





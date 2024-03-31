/// @description Insert description here
// You can write your code in this editor





gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, image_index, x, y, 0.5, 0.5, image_angle, c_white, 0.6);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 1, image_yscale * 0.7, image_angle, c_red, 1);


gpu_set_blendmode(-1);



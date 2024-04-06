/// @description Insert description here
// You can write your code in this editor

/*
# SHOTCUTS

CTRL + U = TOGGLE SHADOW SURFACE ENABLE|DISABLE

*/
if(keyboard_check(vk_control) && keyboard_check_released(ord("U"))){
	if instance_exists(obj_another_shadow_surface) {obj_another_shadow_surface.show = !obj_another_shadow_surface.show;}
}

if(keyboard_check_pressed(ord("R"))){
	game_restart();
}

if(keyboard_check_pressed(vk_up)){
	_current_item_index++;
}

if(_current_item_index > array_length(item) - 1){
	_current_item_index = 0;
}





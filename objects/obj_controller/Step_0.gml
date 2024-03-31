/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("R"))){
	game_restart();
}

if(keyboard_check_pressed(vk_up)){
	_current_item_index++;
}

if(_current_item_index > array_length(item) - 1){
	_current_item_index = 0;
}





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

//Items
item = [
	[spr_tree, obj_tree, obj_player.dark_soul],		
];

enemys_count = instance_number(obj_enemy_03)

//Player Info

info_array = [
	["Existence", instance_exists(obj_player) ? string(obj_player.existence) : ""],
	["Dark Soul", instance_exists(obj_player) ? string(obj_player.dark_soul) : ""],
	["Pure Soul", instance_exists(obj_player) ? string(obj_player.pure_soul) : ""],
	["Minions: ", string(instance_number(obj_minion_02)) + "/" +string(obj_player.minion_limit)],
	["Enemys Count: ", string(enemys_count)],
];



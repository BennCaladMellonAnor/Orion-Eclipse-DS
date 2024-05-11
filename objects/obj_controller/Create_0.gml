/// @description Insert description here
// You can write your code in this editor

//Variables
// Defina sua lista de código
info_array = [];

//Items
item = [];
/*
	Item must be
	
	 * 0 - SPR
	 * 1 - OBJ
	 * 2 - Variable (inc/dec)
	
	0 - spr_tree | obj_tree | obj_player.dark_soul (dec)
	1 - spr_human| obj_human| obj_player.pure_soul (dec)
	
*/
_current_item_index = 0;
current_item_index_max_range = 1;

/*
	Current Item Index must be
	0 - Obj_tree  | Dark Soul
	1 - Obj_Human | Pure Soul
*/

enemys_count = 0;

	
repeat(5){
	//instance_create_layer(irandom_range(100, 1100),irandom_range(100, 1100), "Instances", obj_enemy_01);
}

//audio_play_sound(snd_theme, 1, true, 0.5);


alarm[0] = game_get_speed(gamespeed_fps)/4;
alarm[1] = game_get_speed(gamespeed_fps) * 5; //1s


decrement = function (){
	switch (_current_item_index) {
		case 0:
			obj_player.dark_soul --;
			break;
		default:
			break;
	}
}


/// @description Insert description here
// You can write your code in this editor

item = [
			[spr_house_01, obj_house_01],		
		];
_current_item_index = 0;

repeat(5){
	//instance_create_layer(irandom_range(100, 1100),irandom_range(100, 1100), "Instances", obj_enemy_01);
}

audio_play_sound(snd_theme, 1, true, 0.5);


alarm[0] = game_get_speed(gamespeed_fps)/4;
/// @description Insert description here
// You can write your code in this editor
distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);
direction_to_player = point_direction(x, y, obj_player.x, obj_player.y);

if(distance_to_player <= range_to_follow){
	image_angle = direction_to_player;
	
	var _x = lengthdir_x(movespeed, direction_to_player);
	var _y = lengthdir_y(movespeed, direction_to_player);

	// Move o obj_enemy em direção ao obj_player
	x += _x;
	y += _y;

}


if(instance_place(x, y, obj_npc)){
	if(damage(other)){
		// Toca o som de morte
		audio_play_sound(snd_high_damage, 2, false, 1);

		instance_destroy();
		// Aguarda até que o som termine antes de destruir o objeto
		//alarm[0] = game_get_speed(gamespeed_fps) * audio_sound_length(snd_high_damage);
		movespeed -= 1;
	}	
}




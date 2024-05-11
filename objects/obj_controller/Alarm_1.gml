/// @description Insert description here
// You can write your code in this editor

var _max = 3;
if(instance_exists(obj_enemy_03)){
	if(enemys_count < _max){
		var _enemy_spawn_num = irandom_range(0, _max)
		repeat(_enemy_spawn_num){
			var _x = irandom_range(100, (room_width-100));
			var _y = irandom_range(100, (room_height-100));
			
			instance_create_layer(_x, _y, "Player", obj_enemy_03);
		}
	}
	
}

alarm[1] = game_get_speed(gamespeed_fps) * 5; //1s
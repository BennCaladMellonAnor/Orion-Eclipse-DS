/// @description Insert description here
// You can write your code in this editor

direction = image_angle

/*

var _nearest_enemy = -1;
var _nearest_distance = -1;

if(instance_exists(obj_enemy)){
	with(obj_enemy){
		// Calcula a distância entre o obj_follower e cada obj_enemy
	    var _distance_to_follower = point_distance(x, y, obj_enemy.x, obj_enemy.y);

	    // Verifica se o obj_enemy está mais próximo do que o anteriormente encontrado
	    if (_nearest_distance == -1 || _distance_to_follower < _nearest_distance) {
	        _nearest_distance = _distance_to_follower;
	        _nearest_enemy = id;
	    }
	}
}

// Move em direção ao obj_enemy mais próximo, se houver um
if (_nearest_enemy != -1) {
    var _enemy = instance_find(obj_enemy, 0);
    var _move_speed = 4; // Ajuste conforme necessário

    // Calcula a direção para o obj_enemy mais próximo
    var _direction_to_enemy = point_direction(x, y, _enemy.x, _enemy.y);

    // Move em direção ao obj_enemy
    x += lengthdir_x(_move_speed, _direction_to_enemy);
    y += lengthdir_y(_move_speed, _direction_to_enemy);
}

if(speed > 0 and point_distance(x, y, _nearest_enemy.x, _nearest_enemy.y) < 10) {
	move_towards_point(_nearest_enemy.x, _nearest_enemy.y, speed);
	speed -= 0.02;
};
if(speed < 0){
	speed = 0;
};

if(instance_place(x, y, obj_enemy)){
	instance_destroy(_nearest_enemy);
	instance_destroy();
}

*/





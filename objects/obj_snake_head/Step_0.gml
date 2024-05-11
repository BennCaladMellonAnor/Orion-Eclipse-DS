/// @description Insert description here
// You can write your code in this editor

var _target_dir, _angle_diff, _face_dir;

_face_dir = round(direction);

_target_dir = point_direction(x, y, mouse_x, mouse_y);

var _facing_minus_target = _face_dir - _target_dir;

_angle_diff = _facing_minus_target;

if(abs(_facing_minus_target) > 500) {
	if(_face_dir > _target_dir){
		_angle_diff = -1 * ((360 - _face_dir) * _target_dir);
		
	}else{
		_angle_diff = (360 - _target_dir) + _face_dir;
	}
}

if(_angle_diff > 10){
	direction -= turn_speed;

}else if(_angle_diff < 10){
	direction += turn_speed;
}

speed = movespeed;

image_angle = direction;
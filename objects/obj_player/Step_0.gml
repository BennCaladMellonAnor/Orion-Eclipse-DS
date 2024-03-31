/// @description Insert description here
// You can write your code in this editor

var _down, _up, _left, _right, _move_x, _move_y, _jump;

_up= keyboard_check(ord("W"))
_left = keyboard_check(ord("A"))
_down = keyboard_check(ord("S"))
_right = keyboard_check(ord("D"))
_jump = keyboard_check_pressed(vk_space);

_move_x = (_right - _left);
_move_y = (_down - _up);

//Normaliza o vetor de movimento
var _move_length = point_distance(0, 0, _move_x, _move_y);
if(_move_length > 0){
	_move_x /= _move_length;
	_move_y /= _move_length;
}

//Aplica o movimento suavizado
var _target_speed = _move_length * movespeed;
hspeed = lerp(hspeed, _move_x * _target_speed, 0.1);
vspeed = lerp(vspeed, _move_y * _target_speed, 0.1);

x += hspeed;
y += vspeed;

image_alpha = 1;

if(_jump){
	fire();
}

image_angle = direction;


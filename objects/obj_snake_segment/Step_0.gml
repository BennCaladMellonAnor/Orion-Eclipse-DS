/// @description Insert description here
// You can write your code in this editor

dir = point_direction(x, y, snake_parent.x, snake_parent.y);

direction = dir;

image_angle = dir;

var _direction, _distance;

_direction = point_direction(x, y, obj_snake_head.x, obj_snake_head.y);

_distance = point_distance(x, y, snake_parent.x, snake_parent.y);

if(_distance > 32){
	x += lengthdir_x(obj_snake_head.movespeed, _direction);
	y += lengthdir_y(obj_snake_head.movespeed, _direction);
}
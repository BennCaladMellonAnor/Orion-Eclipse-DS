/// @description Insert description here
// You can write your code in this editor



// Encontrar a direção do movimento do jogador
var _player = instance_find(obj_player, 0); // Supondo que obj_player é o nome do objeto do jogador
var _move_direction = point_direction(0, 0, _player.hspeed, _player.vspeed) + 90;

// Ajustar a direção da seta usando lerp
//image_angle = abs(lerp(image_angle, _move_direction + 90, 0.2));
image_angle += angle_difference(_move_direction,image_angle) * 0.3

x = _player.x
y = _player.y

image_alpha = 0.8









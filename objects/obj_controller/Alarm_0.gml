/// @description Insert description here
// You can write your code in this editor


// Controller de Neve - Create Event
var _num_particles = 10; // Número de partículas
for (var _i = 0; _i < _num_particles; _i++) {
    var _obj = instance_create_layer(random_range(0, 100), random_range(0, room_height), "Snowing", obj_snowing);
	var _scale = random_range(0.2, 0.8);
	_obj.image_xscale = _scale;
	_obj.image_yscale = _scale;
}
alarm[0] = game_get_speed(gamespeed_fps)/4;




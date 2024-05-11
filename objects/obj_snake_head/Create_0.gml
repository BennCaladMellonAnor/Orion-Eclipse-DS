/// @description Insert description here
// You can write your code in this editor

// Definindo variáveis
state = "searching"; // Definindo o estado inicial
segment_distance = 16; // Distância entre os segmentos
num_segments = 5; // Número inicial de segmentos
follow_obj = noone;

// Criar segmentos
for (var _i = 0; _i < num_segments; _i++) {
    var _segment = instance_create_layer(x - (_i + 1) * segment_distance, y, "Instances", obj_snake_segment);
   _segment.snake_parent = id; // Definindo o objeto pai
   _segment.image_xscale = 1 - ((.6 / num_segments) * _i);
   _segment.image_yscale = 1 - ((.6 / num_segments) * _i);
}

movespeed = 4;
turn_speed = 2;
disc_lenght = 5;
disc = [];

//for(var _i = 0; _i < disc_lenght; _i ++){
//	disc[_i] = instance_create_layer(x, y, "Instances", obj_snake_segment);
//	disc[_i].creator = disc[_i].id;
//	disc[_i].speed = movespeed;
	
//	if(_i == 0){
//		disc[_i].creator = instance_id_get(id) + 1;
//	}
//}
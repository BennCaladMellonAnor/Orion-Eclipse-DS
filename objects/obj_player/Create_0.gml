/// @description Insert description here
// You can write your code in this editor

movespeed = 4;

kill_probability = 45;
death_probability = 70;

dark_soul = 0;

//instance_create_layer(x, y, "Instances", obj_arrow);

function fire(){
	//var _x, _y;
	//var _obj = instance_create_layer(x + 20, y - (sprite_height/2) + 16, "Instances", obj_npc)
	//_obj.speed = 10;
	//_obj.image_angle = image_angle
	//_obj.direction = direction;
	//_obj.kill_probability = kill_probability;
	var _obj = instance_create_layer(x, y, "Instances", obj_minion_02);
}
function attack(){
	var _obj = instance_create_layer(x, y, "Instances", obj_minion_02);
	_obj.state = "ATTACK_MOBS";
}

if(!instance_exists(obj_mouse)){
	instance_create_layer(mouse_x, mouse_y,"Instances", obj_mouse);
}
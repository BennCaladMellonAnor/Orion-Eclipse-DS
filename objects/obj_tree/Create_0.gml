/// @description Insert description here
// You can write your code in this editor



range_area = 64 * 2;



// Inherit the parent event
event_inherited();
info_array = [];
resource_type = "tree";

resistance = 10000 //Newton's
wear = 0 //Desgaste

//Formula
//Energia = Força X Distância


function born(){
	var _obj = obj_player;
	if(_obj.pure_soul > 0){
		_obj.pure_soul --;
		instance_create_layer(x, y, "Player", obj_human);
		instance_destroy(false);
	}
}
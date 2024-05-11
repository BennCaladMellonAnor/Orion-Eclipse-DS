/// @description Insert description here
// You can write your code in this editor

grid_size = 64;



function put(){
	if(obj_controller.item[obj_controller._current_item_index][2] > 0){
		var _obj = obj_controller.item[obj_controller._current_item_index][1];
		instance_create_layer(x - (sprite_width/2), y - (sprite_height/2), "Instances", _obj);
		//obj_controller.item[obj_controller._current_item_index][2] -= 1;
		obj_controller.decrement();
	}	
}

info_array = [];
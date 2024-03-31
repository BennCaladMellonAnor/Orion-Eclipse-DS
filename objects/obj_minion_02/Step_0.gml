/// @description Insert description here
// You can write your code in this editor

//problema aqui!!!
//Debug
switch (state) {
    case "FIND_RESOURCES":
        // Lógica para coletar recursos
        // ...
		var _resource_list = ds_list_create();
		with(obj_resource){
			if(resource_type == "tree"){
				ds_list_add(_resource_list, id);
			}
		}
		
		//Encontra o objeto de recurso mais proximo
		var _nearest_resource = noone;
		var _nearest_distance = -1;
		
		for(var _i = 0; _i < ds_list_size(_resource_list); _i++){
			var _resource_id = ds_list_find_value(_resource_list, _i);
			
			var _distance = distance_to_object(_resource_id);
			
			if(_nearest_distance == -1 || _distance < _nearest_distance){
				_nearest_resource = _resource_id;
				_nearest_distance = _distance;
			}
		}
		
		//Libera a lsita de recursos
		ds_list_destroy(_resource_list);
		
		
		//Define o recurso de destino como o objeto de recursos mais proximo
		if(_nearest_resource != noone){
			follow_obj = _nearest_resource;
			state = "GO_TO_RESOURCE";
			
		}
		
		break;
    case "GO_TO_RESOURCE":
        // Lógica para coletar recursos
        // ...
		
		
		//Verifica de o obj ainda existe no jogo
		if(!instance_exists(follow_obj)){
			state = "FIND_RESOURCES";//Se o recurso não existir mais procura outro....
			break;
		}
		
		//Calcula a direção para o objeto de recurso
		
		var _direction = point_direction(x, y, follow_obj.x, follow_obj.y);
		
		//Move o objeto na direção do objeto recurso com uma velocidade constante
		
		var _hspd = lengthdir_x(4, _direction);
		var _vspd = lengthdir_y(4, _direction);
		
		x += _hspd;
		y += _vspd;
		
		//Verifica se o objeto chegou ao objeto de recurso
		
		if(distance_to_object(follow_obj) <= 10){
			state = "COLLECT_RESOURCES";//Se o objeto chegou ao recurso, mudar para o estado de coletar recursos
		}
		
		break;
    case "COLLECT_RESOURCES":
        // Lógica para coletar recursos
        // ...
		if(!instance_exists(follow_obj)){
			state = "FIND_RESOURCES";//Se o recurso não existir mais procura outro....
			break;
		}
		
		// Controlar o tempo de recarga do ataque
        _hit_timer += 1 / game_get_speed(gamespeed_fps); // Incrementar o temporizador
        
        // Verificar se é hora de desferir um hit
        if (_hit_timer >= _recharge_time) {
            // Realizar o hit
            apply_damage(id, follow_obj.id);
            _hit_timer = 0; // Reiniciar o temporizador
        }
		
		break;
	default:
		break;
}

//Debug
		info_array = [
		    ["ID", string(id) + " | Minion"],
		    ["Task", state],
			["Follow", instance_exists(follow_obj) ? follow_obj.id : "UNKNOW OBJ"],
			state == "COLLECT_RESOURCES" ? ["TIMER", _hit_timer] : ["", ""]
		];



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
			//Se o Obj do recurso existe!
		if(_nearest_resource != noone){
			follow_obj = _nearest_resource;
			state = "GO_TO_RESOURCE";	
		}else{ //Se o objeto do recurso não existe
			state = "DASH_TO_PLAYER";
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
			state = "DASH_TO_PLAYER";//Se o recurso não existir mais procura outro....
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
	case "ATTACK_MOBS":
		// Lógica para atacar mobs
	    var _enemy_list = ds_list_create();
	    with (obj_enemy_03) {
	        ds_list_add(_enemy_list, id);
	    }
    
	    // Encontra o inimigo mais próximo
	    var _nearest_enemy = noone;
	    var _nearest_distance = -1;
    
	    for (var _i = 0; _i < ds_list_size(_enemy_list); _i++) {
	        var _enemy_id = ds_list_find_value(_enemy_list, _i);
	        var _distance = distance_to_object(_enemy_id);
        
	        if (_nearest_distance == -1 || _distance < _nearest_distance) {
	            _nearest_enemy = _enemy_id;
	            _nearest_distance = _distance;
	        }
	    }
    
	    // Libera a lista de inimigos
	    ds_list_destroy(_enemy_list);
    
	    // Define o inimigo mais próximo como alvo
	    if (_nearest_enemy != noone) {
	        follow_obj = _nearest_enemy;
	        state = "DASH_TO_ENEMY";
	    } else {
	        state = "FIND_RESOURCES"; // Volta a procurar recursos se não houver inimigos
	    }
	    break;

	case "DASH_TO_ENEMY":
		
		if(!instance_exists(follow_obj)){
			state = "ATTACK_MOBS";
			break;
		}
		
		image_blend = c_red;
		
	    // Lógica para se mover rapidamente em direção ao inimigo
	    var _direction = point_direction(x, y, follow_obj.x, follow_obj.y);
	    var _hspd = lengthdir_x(12, _direction); // Velocidade aumentada para simular um dash
	    var _vspd = lengthdir_y(12, _direction);
		
		// Criação do rastro
		if (random(1) < 0.5) { // Ajuste a frequência de criação do rastro conforme desejado
			var _trail = instance_create_layer(x, y, "Instances", obj_trail);
			_trail.image_blend = make_color_hsv(0, 1, 0.5); // Define a cor inicial do rastro

		}

    
	    x += _hspd;
	    y += _vspd;
    
	    // Verifica se atingiu o inimigo
	    if (distance_to_object(follow_obj) <= 10) {
	        // Realiza o ataque
	        apply_damage(id, follow_obj.id);
	        //state = "FIND_RESOURCES"; // Volta a procurar recursos após o ataque
			// Criação do rastro
				repeat(irandom_range(10, 50)){
					var _particles = instance_create_layer(x, y, "Instances", obj_explosion_particles);
				}
			instance_destroy();
	    }
	    break;
	case "DASH_TO_PLAYER":
		if (instance_exists(obj_player)) {
	        var _direction = point_direction(x, y, obj_player.x, obj_player.y);
	        var _hspd = lengthdir_x(20, _direction); // Velocidade aumentada para simular um dash
	        var _vspd = lengthdir_y(20, _direction);
			
			image_blend = c_navy;

	        x += _hspd;
	        y += _vspd;

	        // Verifica se colidiu com o jogador
	        if (place_meeting(x, y, obj_player)) {
	            instance_destroy(); // Destrua o objeto
	        }
	    } else {
	        state = ""; // Se o jogador não existe, pare de se mover
			instance_destroy();
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



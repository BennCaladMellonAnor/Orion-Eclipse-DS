/// @description Insert description here
// You can write your code in this editor
//Variables
var _hspd = 0;
var _vspd = 0;
var _target_direction = 0;


distance = point_distance(x, y, config[2].x, config[2].y);
if(distance < config[1]){
	following = true;
	ai_state = "SEEK";
}else if(following){
	following = false;
	ai_state = "IDLE";
}

//Logical of State Machine

switch(ai_state){
	case "IDLE":
		if (random(100) < 5) {
            ai_state = "WANDER";
        };

		break;
	case "WANDER":
		 // Lógica para o estado de Vagar Aleatoriamente
        // Aqui você pode adicionar lógica adicional, como definir uma nova direção periodicamente
        //direction = random(360);
		
		
		if(distance_to_point(_change_x, _change_y) <= 0){
			_change_x = irandom_range(100, 1200);
			_change_y = irandom_range(100, 700);
			ai_state = "IDLE";
		}
		
		_target_direction = point_direction(x, y, _change_x, _change_y);
		
		// Move o objeto na direção do novo ponto com uma velocidade constante
		_hspd = lengthdir_x(config[8] * distance, _target_direction);
		_vspd = lengthdir_y(config[8] * distance, _target_direction);
		x += _hspd;
		y += _vspd;
		
		image_angle = _target_direction;
		
		break;
	case "SEEK":
		var _dir = point_direction(x, y, config[2].x, config[2].y);
		
		// Aplicar a força de perseguição
	    _hspd = lengthdir_x(config[6] * distance, _dir);
	    _vspd = lengthdir_y(config[6] * distance, _dir);
		var _arrival_radius = 20;
		// Aplicar a força de chegada se estiver dentro do raio de chegada
	    if (distance < _arrival_radius && distance > 5) {
	        var _arrival_factor = distance / _arrival_radius;
	        _hspd *= _arrival_factor;
	        _vspd *= _arrival_factor;
	    }
		
		// Aplicar as velocidades horizontal e vertical
	    x += _hspd;
	    y += _vspd;
		
		// Definir a direção do objeto para a direção que está se movendo
		image_angle = _dir;
		
		if(place_meeting(x, y, config[2])){
			ai_state = "IDLE";
		}
		if(!following) ai_state = "WANDER";
		break;
	default:
		break;
}

//Debug
info_array = [
	["ID", string(id) + " | Enemy"],
	["State", ai_state],
    ["Distance", distance],
    ["Range", config[0]],
	["CX", _change_x],
	["CY", _change_y]
	
];






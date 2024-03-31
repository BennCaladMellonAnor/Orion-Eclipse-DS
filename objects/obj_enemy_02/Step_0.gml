/// @description Insert description here
// You can write your code in this editor
//Variables
var _state_name = "Born";

distance = point_distance(x, y, config[2].x, config[2].y);
if(distance < config[0] /*Range*/){
	following = true;
}else{
	following = false;
	
}


if (following) {
	ai_state = AI.SEEK;
	

    // Aqui você pode adicionar lógica adicional, como animações de movimento, etc.
} else {
    // Se 'following' for falso, o objeto não está seguindo
    // Adicione qualquer lógica adicional aqui, se necessário

}


//Logical of State Machine

switch(ai_state){
	case AI.IDLE:
		if (random(100) < 5) {
            ai_state = AI.WANDER;
        };
		_state_name = "IDLE";

		break;
	case AI.WANDER:
		 // Lógica para o estado de Vagar Aleatoriamente
        // Aqui você pode adicionar lógica adicional, como definir uma nova direção periodicamente
        //direction = random(360);
        speed = config[4];

		_state_name = "WANDER";
		break;
	case AI.SEEK:
		var _dir = point_direction(x, y, config[2].x, config[2].y);
		
		// Aplicar a força de perseguição
	    var _hspd = lengthdir_x(config[6] * distance, _dir);
	    var _vspd = lengthdir_y(config[6] * distance, _dir);
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
			ai_state = AI.IDLE;
		}
		if(!following) ai_state = AI.WANDER;
		_state_name = "SEEK";
		break;
		
	case AI.ATTACK:
		
		break;
	default:
		break;
}

//Debug
info_array = [
    ["ID", id],
    ["Follow", following],
    ["Distance", distance],
    ["Range", config[0]],
	["State", _state_name],
];






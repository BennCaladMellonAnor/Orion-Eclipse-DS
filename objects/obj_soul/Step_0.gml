/// @description Insert description here
// You can write your code in this editor


/// Step Event
// Lógica para se mover em direção ao jogador
if (state == "DASH_TO_PLAYER") {
    if (instance_exists(obj_player)) {
        var _direction = point_direction(x, y, obj_player.x, obj_player.y);
        var _hspd = lengthdir_x(12, _direction); // Velocidade aumentada para simular um dash
        var _vspd = lengthdir_y(12, _direction);

        x += _hspd;
        y += _vspd;

        // Verifica se colidiu com o jogador
        if (place_meeting(x, y, obj_player)) {
            switch(soul_type){
				case 1:
					obj_player.pure_soul += 1; // Incrementa a energia do jogador
					break;
				default:
					obj_player.dark_soul += 1; // Incrementa a energia do jogador
			}
            instance_destroy(); // Destrua o objeto
        }
    } else {
        state = ""; // Se o jogador não existe, pare de se mover
		instance_destroy();
    }
}

 switch(soul_type){
	case 1:
		image_blend = c_aqua;
		break;
	default:
		image_blend = c_black;
}




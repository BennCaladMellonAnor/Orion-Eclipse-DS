/// @description Insert description here
// You can write your code in this editor

//problema aqui!!!

switch (state) {
    case AI_MINION.COLLECT_RESOURCES:
        // Lógica para coletar recursos
        // ...
		
		follow_obj = obj_resource;
		
		var _distance = point_distance(x, y, follow_obj.x, follow_obj.y);
		var _nearest = instance_nearest(x, y, follow_obj);
		var _dir = point_direction(x, y, follow_obj.x, follow_obj.y);
		var _hspd = lengthdir_x(3, _dir);
		var _vspd = lengthdir_y(3, _dir);
		
		// Verifica colisão com follow_obj (obj_resource)
if (place_meeting(x + _hspd, y + _vspd, follow_obj)) {
    // Ajusta a posição para evitar a colisão
    while (place_meeting(x + sign(_hspd), y, follow_obj)) {
        x += sign(_hspd);
    }
    while (place_meeting(x, y + sign(_vspd), follow_obj)) {
        y += sign(_vspd);
    }
}
				
// Verifica colisão com outros obj_minion
with(obj_minion) {
    if (id != other.id) {
        var _other_dir = point_direction(x, y, other.x, other.y);
        var _other_hspd = lengthdir_x(3, _other_dir);
        var _other_vspd = lengthdir_y(3, _other_dir);

        if (place_meeting(x + _hspd, y + _vspd, other)) {
            // Ajusta a posição para evitar a colisão
            while (place_meeting(x + sign(_hspd), y, other)) {
                x += sign(_hspd);
            }
            while (place_meeting(x, y + sign(_vspd), other)) {
                y += sign(_vspd);
            }

            // Evita ganho excessivo de velocidade
            if (sign(_hspd) == sign(_other_hspd)) {
                _hspd = 0;
            }
            if (sign(_vspd) == sign(_other_vspd)) {
                _vspd = 0;
            }
        }
    }
}

		
		
		if(_distance > 100){
			if(_nearest != noone){
				
				//Aplicando movimento
			    x += _hspd;
			    y += _vspd;
			}
		}else{
			_hspd = 0;
			_vspd = 0;
		}
		
        // Transição de estado quando necessário
        // Exemplo: Se a condição para atacar mobs for atendida
        //if (condition_to_attack_mobs) {
        //    state = AI_MINION.ATTACK_MOBS;
        //}
        break;

    case AI_MINION.ATTACK_MOBS:
        // Lógica para atacar mobs
        // ...

        // Transição de estado quando necessário
        // Exemplo: Se a condição para patrulhar for atendida
        //if (condition_to_patrol) {
        //    state = AI_MINION.PATROL;
        //}
        break;

    case AI_MINION.PATROL:
        // Lógica para patrulhar
        // ...

        // Transição de estado quando necessário
        // Exemplo: Se a condição para autodestruir for atendida
        //if (condition_to_self_destruct) {
        //    state = AI_MINION.SELF_DESTRUCT;
        //}
        break;

    case AI_MINION.SELF_DESTRUCT:
        // Lógica para autodestruir
        // ...
        break;
}



//Debug
info_array = [
    ["ID", id],
    ["Task", state],
];


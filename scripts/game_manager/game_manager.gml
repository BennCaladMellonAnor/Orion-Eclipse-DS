// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function game_manager(){

}

function apply_damage(_obj_origin, _obj_destiny){
	var _resistance = _obj_destiny.resistance;
	var _acceleration =_obj_origin._force / _obj_origin.mass // Aceleração é igual à força dividida pela massa m/s^2
	var _attack_force = _obj_origin.mass * _acceleration; // Força é igual à massa vezes a aceleração (F = m * a)


	var _mass = _obj_origin.mass;
	var _velocity = _obj_origin.hit_speed;
	var _area = _obj_origin.impact_area;

	//First time
		//Hit Kinetic Energy (KE) Joules
		var _kinetic_energy /*Joules(J)*/ = 0.5 * _mass * power(_velocity, 2); //KE=(1/2) * m.v2(m²/v²);
		var _impact_force /*Newtons(N)*/ = _kinetic_energy /*(J)*/ / _area /*(m²)*/;//F = KE / A (N)
		
	
	if(_impact_force > _resistance){
		instance_destroy(_obj_destiny);
	}else{
		_obj_destiny.wear += _impact_force;
	}

}
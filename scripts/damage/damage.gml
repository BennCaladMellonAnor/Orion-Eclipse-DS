// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function damage(_attacker){
	var _kill_chance = irandom_range(1, 100);
	hit_val = _kill_chance;
	return _attacker.kill_probability > death_probability;
}
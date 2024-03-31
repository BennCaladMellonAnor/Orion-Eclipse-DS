/// @description Insert description here
// You can write your code in this editor

/*
	COLLECT_RESOURCES,
	FIND_RESOURCES,
    ATTACK_MOBS,
    PATROL,
    SELF_DESTRUCT
*/

state = "FIND_RESOURCES";

follow_obj = noone;
info_array = [];

class = noone; //Define a classe do minion
/*
	MINEIRADOR,
	LENHADOR
	LUTADOR...
*/

// Definir variáveis físicas
_force = 50; // Força do minion (em Newtons)
_distance = 1; // Distância do ataque (em metros)
_recharge_time = 1.5; // Tempo de recarga do ataque (em segundos)
_hit_timer = 0; // Temporizador para controle do tempo de recarga

mass = 10 //Kg
impact_area = 2 //m² (A)
hit_speed = 20 //m/s








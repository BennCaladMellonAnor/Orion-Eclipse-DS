/// @description Insert description here
// You can write your code in this editor

if show {
	if (!surface_exists(surface)){
		surface = surface_create(surface_width, surface_height);
	}

	// No Draw Event do obj_controller
	// Limpa a superfície com a cor escura
	surface_set_target(surface);
	draw_clear_alpha(c_black, 0);

	// Desenha o cenário escuro
	// Substitua isso pelo desenho do seu cenário escuro
	draw_set_alpha(0.99);
	draw_set_color(c_black);
	draw_rectangle(0, 0, surface_width, surface_height, false);
	draw_set_alpha(1);

	// Desenha o foco de luz do jogador (tocha)
	var _player_x = obj_player.x;
	var _player_y = obj_player.y;
	var _light_radius = 64 * 3;
	gpu_set_blendmode(bm_subtract);

	draw_set_color(c_white);
	draw_set_alpha(0.9); // Ajuste a opacidade da luz conforme necessário
	draw_circle(_player_x, _player_y, _light_radius + irandom(5), false);

	draw_set_alpha(0.6); // Ajuste a opacidade da luz conforme necessário
	draw_circle(_player_x, _player_y, _light_radius + (_light_radius/4) + irandom(5), false);

	draw_set_alpha(0.2); // Ajuste a opacidade da luz conforme necessário
	draw_circle(_player_x, _player_y, _light_radius + (_light_radius/2) + irandom(1), false);

	draw_set_alpha(1);

	// Restaura o modo de mistura padrão
	gpu_set_blendmode(bm_normal);
	// Desenha os objetos e personagens dentro do foco de luz
	// Substitua isso pelo desenho dos seus objetos e personagens dentro da área iluminada

	// Restaura a superfície como destino de desenho padrão
	surface_reset_target();

	// Desenha a superfície na tela
	draw_surface(surface, 0, 0);
}





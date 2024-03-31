/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

//Variables

// Define a posição inicial para o texto ao lado direito da sprite
var _x = x + sprite_width + 10; // 10 pixels de margem
var _y = y - sprite_height / 2; //Posiciona no topo

// Define o espaçamento vertical entre as linhas
var _line_height = 20;

for (var _i = 0; _i < array_length(info_array); _i++) {
    var _key = info_array[_i][0];
    var _value = info_array[_i][1];

    // Converte o valor para string se não for uma string
    if (!is_string(_value)) {
        _value = string(_value);
    }

    // Desenha a chave e o valor na tela
		//Verifica se _i está na primeira linha, se sim não acrescenta o espaçamento de linha
    draw_text(_x, _y + (_i == 0 ? 0 : _i * _line_height), _key + ": " + _value);
}


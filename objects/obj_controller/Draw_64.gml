/// @description Insert description here
// You can write your code in this editor

//Screen
var _gui_h, _gui_w, _mx, _my, _current_item;

_gui_h = display_get_gui_height();
_gui_w = display_get_gui_width();

_mx = device_mouse_x_to_gui(0);
_my = device_mouse_y_to_gui(0);

var _x, _y;
_x = 100;
_y = _gui_h - 100;



var _current_item_sprite = item[_current_item_index][0];
var _spr_h = sprite_get_height(_current_item_sprite) / 2;
var _spr_w = sprite_get_width(_current_item_sprite) / 2;

draw_sprite(_current_item_sprite, 0, _x - _spr_w, _y - _spr_h);

draw_sprite_ext(spr_item_square, 0, _x, _y, 2, 2, 0, c_white, 1);

draw_text(_x - 20, _y + (_y/2), string(_current_item_index));


//Painel

draw_set_font(fnt_screen);


// Defina as posições iniciais para desenhar
var _draw_x = 100;
var _draw_y = 100;

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
    draw_text(_draw_x, _draw_y + (_i == 0 ? 0 : _i * _line_height), _key + " : " + _value);
}

draw_set_font(-1);




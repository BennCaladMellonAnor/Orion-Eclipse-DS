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




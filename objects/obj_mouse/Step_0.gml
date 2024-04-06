var _mouse_grid_x, _mouse_grid_y;
var _grid_size = 64;
var _half_sprite_width = sprite_get_width(sprite_index) / 2;
var _half_sprite_height = sprite_get_height(sprite_index) / 2;

// Obtenha as coordenadas do mouse em relação à grade
_mouse_grid_x = round(mouse_x / _grid_size) * _grid_size;
_mouse_grid_y = round(mouse_y / _grid_size) * _grid_size;

// Verifique se o mouse está dentro ou fora da área do objeto
var _mouse_inside_x = mouse_x > x - _half_sprite_width && mouse_x < x + _half_sprite_width;
var _mouse_inside_y = mouse_y > y - _half_sprite_height && mouse_y < y + _half_sprite_height;

// Verifique a diferença entre o mouse e o objeto em relação à grade
var _dx = _mouse_grid_x - x;
var _dy = _mouse_grid_y - y;

// Faça o objeto seguir o mouse em incrementos de 64 pixels
if (!_mouse_inside_x || !_mouse_inside_y) {
    if (abs(_dx) >= 32) {
        x += sign(_dx) * _grid_size;
    }
    if (abs(_dy) >= 32) {
        y += sign(_dy) * _grid_size;
    }
}
show_debug_message("Mouse:");
show_debug_message("x: " + string(mouse_x) + ", y: " + string(mouse_y));
show_debug_message("Obj grid do mouse:");
show_debug_message("x: " + string(x) + ", y: " + string(y));
show_debug_message("Diferença em X: " + string(mouse_x - x) + ", diferença em Y: " + string(mouse_y - y));

//if (mouse_check_button_pressed(mb_left)) put();
//Debug
		info_array = [
		    ["X", x], 
			["Y", y],
			["MOUSE_X", mouse_x],
			["MOUSE_Y", mouse_y],
		];
var _mouse_grid_x, _mouse_grid_y;

// Obtenha as coordenadas do mouse em relação à grade
_mouse_grid_x = round(mouse_x / grid_size) * grid_size;
_mouse_grid_y = round(mouse_y / grid_size) * grid_size;

// Faça o objeto seguir o mouse
x += (_mouse_grid_x - x) * 0.8; // Ajuste o valor 0.1 para controlar a velocidade de seguimento
y += (_mouse_grid_y - y) * 0.8;

//if (mouse_check_button_pressed(mb_left)) put();

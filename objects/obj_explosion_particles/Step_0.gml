/// @description Insert description here
// You can write your code in this editor


/// Step Event
// Movimente as partículas
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Reduza a transparência com o tempo
image_alpha -= 0.01;

// Destrua as partículas quando o tempo de vida acabar
lifetime--;
if (lifetime <= 0 || image_alpha <= 0) {
    instance_destroy();
}




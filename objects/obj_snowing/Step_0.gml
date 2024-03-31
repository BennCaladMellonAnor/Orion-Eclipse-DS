/// @description Insert description here
// You can write your code in this editor


// Objeto de Floco de Neve - Step Event
var _speed = random_range(7, 10); // Velocidade aleatória
var _zigzag = random_range(-2, 2); // Amplitude do zigzag
x += _speed; // Movimento horizontal
y += random_range(-1, 1); // Pequenos desvios verticais
y += _zigzag; // Adiciona o efeito de zigzag


image_xscale -= decrement;
image_yscale -= decrement;

if(image_xscale <= 0.1){
	instance_destroy();
}



/// @description Insert description here
// You can write your code in this editor


/// Create Event
// Defina as propriedades iniciais das partículas
direction = irandom(360); // Direção aleatória
speed = random_range(2, 5); // Velocidade aleatória
image_angle = direction; // Angulo de rotação aleatório
image_alpha = random_range(0.5, 1); // Transparência aleatória
image_blend = choose(c_fuchsia, c_red); // Cor aleatória
scale = random_range(0.1, 1.2);

// Defina o tempo de vida aleatório das partículas
lifetime = irandom_range(10, 30); // Frames

image_xscale = scale;
image_yscale = scale;




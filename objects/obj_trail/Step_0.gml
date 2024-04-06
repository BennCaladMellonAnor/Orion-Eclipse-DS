/// Step Event
// Mova a fumaça
x += lengthdir_x(speed, image_angle);
y += lengthdir_y(speed, image_angle);

// Reduza a transparência com o tempo
image_alpha -= 0.005;

// Destrua a fumaça quando o tempo de vida acabar
lifetime--;
if (lifetime <= 0) {
    instance_destroy();
}
/// @description Insert description here
// You can write your code in this editor
draw_self();

if(distance_to_player < range_to_follow){
	draw_set_color(c_red);
	draw_circle(x, y, range_to_follow, true);
	draw_set_color(-1);
}





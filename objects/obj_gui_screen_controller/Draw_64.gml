/// @description Insert description here
// You can write your code in this editor


if(instance_exists(obj_npc)){
	draw_text(10, 10, "NPC's: " + string(instance_number(obj_npc) > 0 ? instance_number(obj_npc) : 0));
}
draw_set_font(fnt_gui);
draw_text(10, 25+22, string(obj_player.direction) + " Graus");



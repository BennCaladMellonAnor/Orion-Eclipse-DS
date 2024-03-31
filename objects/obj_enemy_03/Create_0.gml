/// @description Insert description here
// You can write your code in this editor
config = [
	 150,			//0. Range
	 100,			//1. follow Distance
	 obj_player,	//2. Object to follow
	 3,				//3. Seeker_speed
	 0.5,			//4. Wander_speed
	 50,			//5. Attack_range
	 0.05,			//6. Seek_force
	 50,			//7. Arrival_radius
	 0.005,				//8. Wander_force
	 4,				//9. 
	 4,				//10. 
	 4,				//11. 
	 4,				//12. 
];


ai_state = "IDLE";
/*
    IDLE,
    WANDER,
    SEEK,
    ATTACK
*/	


distance = 0;
following = false;

info_array = [];

_change_x = 500;
_change_y = 300;

randomize();



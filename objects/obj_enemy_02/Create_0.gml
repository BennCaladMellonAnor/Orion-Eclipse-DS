/// @description Insert description here
// You can write your code in this editor
config = [
	 150,			//0. Range
	 100,			//1. follow Distance
	 obj_player,	//2. Object to follow
	 3,				//3. Seeker_speed
	 2,				//4. Wander_speed
	 50,			//5. Attack_range
	 0.05,			//6. Seek_force
	 50,			//7. Arrival_radius
	 4,				//8. 
	 4,				//9. 
	 4,				//10. 
	 4,				//11. 
	 4,				//12. 
];

enum AI {
    IDLE,
    WANDER,
    SEEK,
    ATTACK
}

ai_state = AI.WANDER;


distance = 0;
following = false;

info_array = [];




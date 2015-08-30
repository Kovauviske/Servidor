/*
 File: 0snake&rabbit.sqf
*/

[] spawn {
	while {true} do {
	{
		 if ((agent _x isKindOf "Snake_random_F") || (agent _x isKindOf "Rabbit_F")) then { deleteVehicle agent _x; };
        }forEach agents;
		sleep 2;
	};
};
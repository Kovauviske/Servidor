#include <macro.h>
/*
	COP UNIFORM SCRIPT
	Author: coldgas (http://altis.newhopeoutfit.de)
	Created for www.altisliferpg.com
*/
#define FETCH_CONST(var) (call var)

if(side player == civilian) then {
	// Prisoner
	if(side player == civilian && uniform player == "U_C_WorkerCoveralls") then {
	player setObjectTextureGlobal [0, "skins\prisioneiro.jpg"];
	};
};
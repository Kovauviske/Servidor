#include <macro.h>
/*
	File: fn_sellTurtle.sqf

	Description:
	Sells the turtles! Save the turtles!
	This was a super lazy thing to do but I just want to push it...
*/
private["_index","_price","_val"];
if(life_inv_goldbar == 0) exitWith {
	titleText["Você não tem nenhuma Barra de ouro para vender, sinto muito!","PLAIN"];
};

_index = ["goldbar",__GETC__(sell_array)] call TON_fnc_index;
_price = (__GETC__(sell_array) select _index) select 1;
_val = life_inv_goldbar;
_price = _price * _val;

if([false,"goldbar",life_inv_goldbar] call life_fnc_handleInv) then {
	titleText[format["Você vendeu %1 Barra(s) de Ouro por %2 R$",_val,[_price] call life_fnc_numberText],"PLAIN"];
	life_cash = life_cash + _price;
};

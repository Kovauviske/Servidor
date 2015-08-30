/*
                File: fn_BipBipCamion.sqf
                Author: Jennova
				edit from so much bug: Fuzz

*/

private["_Automobile","_vitesseX"];


if (BipBipOn) then {
	[_this select 0] spawn {
		_Automobile = _this select 0;

		if (isNil "_Automobile" OR isNull _Automobile) exitWith {
		   hint format ["Você não está em um veículo !"];
		};

		while {(alive _Automobile)} do {

		   _VitesseX = speed _Automobile;

		   if (_VitesseX >= 0) exitWith {};

		   //_Automobile say3D "bipbip_camion";
		   [[_Automobile,"bipbip_camion"],"life_fnc_playSound",true,false] spawn life_fnc_MP;

		   sleep 0.6;
		};

		BipBipOn = false;
	};
};
/*
	File: fn_UnLockCarSound.sqf
*/
private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _source) exitWith {};
_vehicle say3D "unlock";
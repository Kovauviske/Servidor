/*
	File: fn_LockCarSound.sqf
*/
private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {};
_vehicle say3D "car_lock";
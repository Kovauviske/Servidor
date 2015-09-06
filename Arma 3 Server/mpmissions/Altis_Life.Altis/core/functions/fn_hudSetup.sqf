/*
	File: fn_hudSetup.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Setups the hud for the player?
*/
private["_display","_alpha","_version","_p","_pg"];
disableSerialization;
_display = findDisplay 46;
_alpha = _display displayCtrl 1001;
_version = _display displayCtrl 1000;

2 cutRsc ["playerHUD","PLAIN"];
_version ctrlSetText format["BETA: 0.%1.%2",(productVersion select 2),(productVersion select 3)];
[] call life_fnc_hudUpdate;

[] spawn
{
	private["_dam"];
	while {true} do
	{
		_dam = damage player;
		waitUntil {(damage player) != _dam};
		[] call life_fnc_hudUpdate;
	};
};

[] spawn
	{
		private["_run"];
		while {true} do
		{
			_run = getFatigue player;
			waitUntil {(getFatigue player) != _run};
			[] call life_fnc_hudUpdate;

			if((getFatigue player) > 0.59) then
			{
				if(([false,"redgull",1] call life_fnc_handleInv)) then
				{
					life_thirst = 100;
					player setFatigue 0;
					[] spawn
					{
						life_redgull_effect = time;
						titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
						player enableFatigue false;
						waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
						player enableFatigue true;
					};
				};
			};
		};
	};
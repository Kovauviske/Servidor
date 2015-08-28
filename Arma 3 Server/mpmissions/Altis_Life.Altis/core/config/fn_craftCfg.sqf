#include <macro.h>
/*
	File: fn_craftCfg.sqf
	Author: EdgeKiller

	Description:
	Master configuration file for the crafting menu.

*/
private["_craft"];
_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_craft) do
{
	case "weapon":
	{
		switch(true) do
		{
			default
			{
				["Produzir Item",
					[
						["muzzle_snds_M", ["life_inv_goldbar",1,"life_inv_copperr",1]],
						["muzzle_snds_H", ["life_inv_goldbar",3,"life_inv_copperr",5,"life_inv_ironr",6,"life_inv_diamondr",1]],
						["muzzle_snds_B", ["life_inv_goldbar",6,"life_inv_copperr",10,"life_inv_ironr",8]],
						["muzzle_snds_338_san", ["life_inv_goldbar",10,"life_inv_copperr",10,"life_inv_ironr",2]],
						["muzzle_snds_93mmg", ["life_inv_goldbar",12,"life_inv_copperr",10,"life_inv_ironr",2]]

					]
				];
			};
		};
	};
};
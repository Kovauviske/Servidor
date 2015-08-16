#include <macro.h>
/*
	File: fn_clothing_söldner.sqf
	Author: Alexander Efremidis

	Description:
	Master config file for Söldner clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Loja de Roupas"];

_ret = [];
switch (_filter) do
{
	//Uniforms
    case 0:
    {
        if(__GETC__(life_donator) > 1 ) then
        {
			_ret set[count _ret,["U_I_CombatUniform_tshirt",nil,25000]];
			_ret set[count _ret,["U_I_pilotCoveralls",nil,25000]];
			_ret set[count _ret,["U_I_OfficerUniform",nil,25000]];
			_ret set[count _ret,["U_BG_Guerilla1_1",nil,25000]];
			_ret set[count _ret,["U_IG_Guerilla1_1",nil,25000]];
			_ret set[count _ret,["U_B_survival_uniform",nil,25000]];
			_ret set[count _ret,["U_I_G_resistanceLeader_F",nil,25000]];
			_ret set[count _ret,["U_O_FullGhillie_sard",nil,25000]];
			_ret set[count _ret,["U_B_FullGhillie_lsh",nil,25000]];
			_ret set[count _ret,["U_B_FullGhillie_sard",nil,25000]];
			_ret set[count _ret,["U_B_FullGhillie_ard",nil,25000]];
			_ret set[count _ret,["U_O_FullGhillie_sard",nil,25000]];
			_ret set[count _ret,["U_I_FullGhillie_lsh",nil,25000]];
			_ret set[count _ret,["U_I_FullGhillie_ard",nil,25000]];
			_ret set[count _ret,["U_I_OfficerUniform",nil,25000]];
			_ret set[count _ret,["U_I_GhillieSuit",nil,25000]];
			_ret set[count _ret,["U_I_Wetsuit",nil,12500]];
        };
    };

	//Hats
	case 1:
	{
		if(__GETC__(life_donator) > 1) then
		{
			_ret set[count _ret,["H_Booniehat_indp",nil,5000]];
			_ret set[count _ret,["H_HelmetB_camo",nil,5000]];
			_ret set[count _ret,["H_Booniehat_khk",nil,5000]];
			_ret set[count _ret,["H_HelmetB_sand",nil,5000]];
			_ret set[count _ret,["H_HelmetCrew_O",nil,5000]];
			_ret set[count _ret,["H_PilotHelmetHeli_B",nil,5000]];
			_ret set[count _ret,["H_HelmetO_ocamo",nil,5000]];
			_ret set[count _ret,["H_Shemag_khk",nil,5000]];
			_ret set[count _ret,["H_Shemag_olive",nil,5000]];
			_ret set[count _ret,["H_ShemagOpen_khk",nil,5000]];
			_ret set[count _ret,["H_ShemagOpen_tan",nil,5000]];
			_ret set[count _ret,["H_Hat_camo",nil,5000]];
			_ret set[count _ret,["H_Bandanna_surfer",nil,5000]];
			_ret set[count _ret,["H_CrewHelmetHeli_I",nil,15000]];
		};
	};

	//Glasses
	case 2:
	{
		if(__GETC__(life_donator) > 1) then
		{
			_ret set[count _ret,["G_Shades_Black",nil,20]];
			_ret set[count _ret,["G_Balaclava_oli",nil,750]];
			_ret set[count _ret,["G_Shades_Blue",nil,20]];
			_ret set[count _ret,["G_Sport_Blackred",nil,20]];
			_ret set[count _ret,["G_Sport_Checkered",nil,20]];
			_ret set[count _ret,["G_Sport_Blackyellow",nil,20]];
			_ret set[count _ret,["G_Sport_BlackWhite",nil,20]];
			_ret set[count _ret,["G_I_Diving",nil,70]];
			_ret set[count _ret,["G_Squares",nil,10]];
			_ret set[count _ret,["G_Lowprofile",nil,30]];
			_ret set[count _ret,["G_Combat",nil,50]];
		};
	};

	//Vest
	case 3:
	{
		if(__GETC__(life_donator) > 1) then
		{
			_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,1500]];
			_ret set[count _ret,["V_PlateCarrier1_rgr",nil,2500]];
			_ret set[count _ret,["V_Chestrig_khk",nil,3500]];
			_ret set[count _ret,["V_TacVest_oli",nil,3500]];
			_ret set[count _ret,["V_TacVestCamo_khk",nil,3500]];
			_ret set[count _ret,["V_HarnessOGL_brn",nil,3500]];
			_ret set[count _ret,["V_PlateCarrierIA1_dgtl",nil,3500]];
			_ret set[count _ret,["V_PlateCarrierIAGL_dgtl",nil,3500]];
			_ret set[count _ret,["V_I_G_resistanceLeader_F",nil,3500]];
			_ret set[count _ret,["V_BandollierB_rgr",nil,7500]];
			_ret set[count _ret,["V_RebreatherIA",nil,8000]];
			_ret set[count _ret,["V_PlateCarrierL_CTRG",nil,10000]];
		};
	};

	//Backpacks
	case 4:
	{
		if(__GETC__(life_donator) > 1) then
		{
			_ret set[count _ret,["B_AssaultPack_dgtl",nil,2500]];
			_ret set[count _ret,["B_Kitbag_mcamo",nil,4500]];
			_ret set[count _ret,["B_TacticalPack_oli",nil,3500]];
			_ret set[count _ret,["B_AssaultPack_dgtl",nil,5000]];
			_ret set[count _ret,["B_FieldPack_ocamo",nil,3000]];
			_ret set[count _ret,["B_Bergen_sgg",nil,4500]];
			_ret set[count _ret,["B_Kitbag_cbr",nil,4500]];
			_ret set[count _ret,["B_Carryall_oli",nil,5000]];
			_ret set[count _ret,["B_Carryall_khk",nil,5000]];
			};
	};
};

_ret;
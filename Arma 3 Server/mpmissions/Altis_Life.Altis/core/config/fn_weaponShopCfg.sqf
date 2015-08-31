#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for the weapon shops.

	Return:
	String: Close the menu
	Array:
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop ==nil) exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Você não é um policial"};
			case (__GETC__(life_coplevel) != 1): {"Você não é um Recruta/Soldado "};
			default
			{
				["Loja de Recruta/Soldado",
					[
						["Rangefinder",nil,5000],
						["arifle_sdar_F","Taser Rifle",30000],
                        ["20Rnd_556x45_UW_mag","Munição Taser Rifle",1000],
						["hgun_Rook40_F","Taser Pistola",10000],
						["hgun_Rook40_snds_F","Taser Pistola Silenciador",200],
						["16Rnd_9x21_Mag","Munição Taser Pistola",100],
						["arifle_MX_F",nil,50000],
						["30Rnd_65x39_caseless_mag",nil,250]
					]
				];
			};
		};
	};

	case "cop_visier":
	{
		switch(true) do
		{
			case (playerSide != west): {"Você não é um policial!"};
			case (__GETC__(life_coplevel) < 1): {"Sua patente é inferior, você não tem acesso a loja!"};
			default
			{
				["Itens Policial",
					[
						["ItemMap",nil,100],
						["ItemWatch",nil,100],
						["ItemCompass",nil,100],
						["ItemGPS",nil,1000],
						["ToolKit",nil,5000],
						["FirstAidKit",nil,3000],
						["NVGoggles_OPFOR",nil,5000],
						["Chemlight_red",nil,1000],
						["Chemlight_yellow",nil,1000],
						["Chemlight_green",nil,1000],
						["Chemlight_blue",nil,1000],
						["acc_flashlight",nil,1000],
						["acc_pointer_IR",nil,1000],
						["B_UavTerminal",nil,50000]
					]
				];
			};
		};
	};

	case "adac_basic":
	{
		switch (true) do
		{
			case (playerSide != independent): {"Você não é um cirugião"};
			case (__GETC__(life_mediclevel) < 2): {"Você só pode acessar essa loja se for um cirugião !"};
			default
			{
				["ADAC Shop",
					[
						["ItemGPS",nil,10],
						["Binocular",nil,10],
						["ToolKit",nil,10],
						["FirstAidKit",nil,10],
						["Medikit",nil,10],
						["NVGoggles",nil,10],
						["Chemlight_red",nil,20],
						["Chemlight_yellow",nil,20],
						["Chemlight_green",nil,20],
						["Chemlight_blue",nil,20]
					]
				];
			};
		};
	};

	case "med_basic":
	{
		switch (true) do
		{
			case (playerSide != independent): {"Você não é medico"};
			case (__GETC__(life_mediclevel) < 1): {"Você só pode acessar essa loja se for um médico."};
			default
			{
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,10],
						["Binocular",nil,10],
						["ToolKit",nil,10],
						["FirstAidKit",nil,10],
						["Medikit",nil,10],
						["NVGoggles",nil,10],
						["Chemlight_red",nil,20],
						["Chemlight_yellow",nil,20],
						["Chemlight_green",nil,20],
						["Chemlight_blue",nil,20]
					]
				];
			};
		};
	};

	case "cop_weapon":
	{
		switch(true) do
		{
			case (playerSide != west): {"Você não é um policial!"};
			case (__GETC__(life_coplevel) == 0): {"Você não está na lista dos policial"};

			default
			{
				_ret = [];
				_ret pushBack ["hgun_P07_snds_F","Tazer Silenciado",2000];					//Stun Pistol
				_ret pushBack ["30Rnd_9x21_Mag","Munição da Pistola Tazer",150];
				_ret pushBack ["arifle_sdar_F","SDAR - Arma Letal",5000];
				_ret pushBack ["20Rnd_556x45_UW_mag","Munição  - SDAR",150];
				_ret pushBack ["SMG_01_F",nil,20000];								//Vermin SMG .45 ACP
				_ret pushBack ["30Rnd_45ACP_Mag_SMG_01","Munição - Vermin",150];
				_ret pushBack ["SMG_02_F",nil,17000];
				_ret pushBack ["30Rnd_9x21_Mag","Munição - String",150];

				if(__GETC__(life_coplevel) > 1) then //Agent
				{
					_ret pushBack ["hgun_PDW2000_F",nil,17000];							//PDW2000 9 mm
					_ret pushBack ["30Rnd_9x21_Mag","Munição - PDW2000",150];							//MAG// 9 mm
					_ret pushBack ["arifle_MX_RCO_pointer_snds_F",nil,45000];//MX full equip
					_ret pushBack ["30Rnd_65x39_caseless_mag","Munição - MX",150];
					_ret pushBack ["arifle_MXC_Black_F",nil,35000];
					_ret pushBack ["30Rnd_65x39_caseless_mag",nil,150];
				};

				if(__GETC__(life_coplevel) > 2) then //Sergent
				{
					//5.56mm
					_ret pushBack ["arifle_MXM_Black_F",nil,45000];
					_ret pushBack ["30Rnd_65x39_caseless_mag",nil,150];
					_ret pushBack ["arifle_TRG20_ACO_Flash_F",nil,25000];//TRG-20 5.56 mm
					_ret pushBack ["arifle_TRG21_ARCO_pointer_F",nil,40000];//TRG-21 EGLM 5.56 mm
					_ret pushBack ["30Rnd_556x45_Stanag","Munição - TRG20",150];//TRG-21 5.56 mm
					//.
					_ret pushback ["Laserdesignator_03",nil,350];
					if(__GETC__(life_coplevel) > 3) then //Lieutenant
					{
						_ret pushBack ["arifle_Mk20_MRCO_plain_F",nil,40000];
						_ret pushBack ["30Rnd_556x45_Stanag",nil,150];
						_ret pushBack ["srifle_DMR_02_F",nil,57000];
						_ret pushBack ["10Rnd_338_Mag",nil,150];
						_ret pushBack ["srifle_DMR_06_camo_F",nil,30000];
						_ret pushBack ["20Rnd_762x51_Mag",nil,150];

					};
				};

				if(__GETC__(life_coplevel) > 4) then //Capitaine
				{
					_ret pushBack ["arifle_Katiba_ARCO_pointer_snds_F",nil,45000];
					_ret pushBack ["30Rnd_65x39_caseless_green",nil,150];
					_ret pushBack ["arifle_MX_SW_Black_Hamr_pointer_F",nil,60000];
					_ret pushBack ["100Rnd_65x39_caseless_mag",nil,150];
					_ret pushBack ["srifle_DMR_05_blk_F",nil,80000];
					_ret pushBack ["10Rnd_93x64_DMR_05_Mag",nil,150];
					_ret pushBack ["srifle_EBR_ARCO_pointer_snds_F",nil,57000];
					_ret pushBack ["20Rnd_762x51_Mag",nil,150];
					_ret pushBack ["srifle_LRR_F",nil,48000];
					_ret pushBack ["7Rnd_408_Mag",nil,50];
					_ret pushBack ["MMG_01_tan_F",nil,60000];
					_ret pushBack ["150Rnd_93x64_Mag",nil,150];
				};

				if(__GETC__(life_coplevel) > 5) then //Commandant
				{
					_ret pushBack ["LMG_Zafir_pointer_F",nil,50000];
					_ret pushBack ["150Rnd_762x54_Box",nil,150];
					_ret pushBack ["srifle_GM6_camo_F",nil,55000];
					_ret pushBack ["5Rnd_127x108_Mag",nil,150];
					_ret pushBack ["srifle_DMR_04_F",nil,60000];
					_ret pushBack ["10Rnd_127x54_Mag",nil,150];
				};
				if(__GETC__(life_coplevel) > 6) then //Général
				{
					_ret pushBack ["srifle_DMR_03_F",nil,50000];
					_ret pushBack ["20Rnd_762x51_Mag",nil,150];
					_ret pushBack ["MMG_02_black_RCO_BI_F",nil,40000];
					_ret pushBack ["130Rnd_338_Mag",nil,150];
					_ret pushBack ["launch_NLAW_F",nil,400000];
					_ret pushBack ["NLAW_F",nil,150000];
				};

			//Optics/////

				_ret pushBack ["optic_Aco",nil,500];
				_ret pushBack ["optic_ACO_grn",nil,500];

				if(__GETC__(life_coplevel) > 1) then //Agent
				{
					_ret pushBack ["optic_Holosight",nil,1000];
					_ret pushBack ["optic_MRCO",nil,2000];
					_ret pushBack ["optic_SOS",nil,7500];
					_ret pushBack ["optic_Arco",nil,750];
					_ret pushBack ["optic_DMS",nil,4500];
					_ret pushBack ["optic_NVS",nil,7500];
					_ret pushBack ["optic_AMS_snd",nil,7500];
					_ret pushBack ["optic_AMS",nil,7500];
					_ret pushBack ["optic_AMS_khk",nil,7500];
					_ret pushBack ["optic_KHS_blk",nil,7500];
					_ret pushBack ["optic_KHS_hex",nil,7500];
					_ret pushBack ["optic_KHS_old",nil,7500];
					_ret pushBack ["optic_KHS_tan",nil,7500];
					_ret pushBack ["optic_LRPS",nil,7500];
				};

			//Accessories//////
				//Recrue
				_ret pushBack ["muzzle_snds_L",nil,750];
				//Agent
				if(__GETC__(life_coplevel) > 1) then
				{
					_ret pushBack ["muzzle_snds_M",nil,2750];
					_ret pushBack ["muzzle_snds_acp",nil,2750];
					_ret pushBack ["muzzle_snds_H",nil,7500];
					_ret pushBack ["muzzle_snds_93mmg",nil,7500];
					_ret pushBack ["muzzle_snds_B",nil,2750];
					_ret pushBack ["muzzle_snds_338_black",nil,2750];
					_ret pushBack ["acc_pointer_IR",nil,250];
				};
				if(__GETC__(life_coplevel) > 2) then
				{
					_ret pushBack ["HandGrenade_Stone","Granada de Luz",1700];
					_ret pushBack ["SmokeShellBlue","Gás Lacrimogéneo",1700];
					//Flare Grenade
					_ret pushBack ["UGL_FlareWhite_F","Bastão Branca",1700];
					_ret pushBack ["UGL_FlareGreen_F","Bastão Verde",1700];
					_ret pushBack ["UGL_FlareRed_F","Bastão Vermelha",1700];
					_ret pushBack ["UGL_FlareYellow_F","Bastão Amarela",1700];
					_ret pushBack ["UGL_FlareCIR_F","Bastão",1700];
					//Smoke Granade
					_ret pushBack ["1Rnd_Smoke_Grenade_shell","Granada de Fumaça - Brança",1700];
					_ret pushBack ["1Rnd_SmokeRed_Grenade_shell","Granada de Fumaça - Vermelha",1700];
					_ret pushBack ["1Rnd_SmokeGreen_Grenade_shell","Granada de Fumaça - Verde",1700];
					_ret pushBack ["1Rnd_SmokeYellow_Grenade_shell","Granada de Fumaça - Amarelo",1700];
					_ret pushBack ["1Rnd_SmokePurple_Grenade_shell","Granada de Fumaça - Rosa",1700];
					_ret pushBack ["1Rnd_SmokeBlue_Grenade_shell","Granada de Fumaça - Azul",1700];
					_ret pushBack ["1Rnd_SmokeOrange_Grenade_shell","Granada de Fumaça - Laranja",1700];
					//Bipod
					_ret pushBack ["bipod_02_F_blk",nil,250];
					_ret pushBack ["bipod_03_F_blk",nil,250];
					_ret pushBack ["bipod_01_F_blk",nil,250];
					_ret pushBack ["bipod_02_F_hex",nil,250];
					_ret pushBack ["bipod_01_F_mtp",nil,250];
					_ret pushBack ["bipod_03_F_oli",nil,250];
					_ret pushBack ["bipod_01_F_snd",nil,250];
					_ret pushBack ["bipod_02_F_tan",nil,250];
				};
				//Sortie
				switch (__GETC__(life_coplevel)) do
				{
					case (1): {["Loja de Armas - Soldado",_ret]};
					case (2): {["Loja de Armas - Cabo",_ret]};
					case (3): {["Loja de Armas - Sargento",_ret]};
					case (4): {["Loja de Armas - Tenente",_ret]};
					case (5): {["Loja de Armas - Capital",_ret]};
					case (6): {["Armurerie Commandant",_ret]};
					case (7): {["Armurerie Général",_ret]};
				};
			};
		};
	};

	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Você não é um civil"};
			case (!license_civ_rebel): {"Você precisa ter licença rebelde"};
			default
			{
				["Loja de armas rebeldes",
					[
						["Rangefinder",nil,20000],
						["hgun_P07_F",nil,20000],
						["16Rnd_9x21_Mag","Munição - P07 9mm",25],
						["hgun_ACPC2_F",nil,25000],
						["9Rnd_45ACP_Mag","Munição - ACP-C2 .45",45],
						["hgun_Pistol_heavy_02_F",nil,35000],
						["6Rnd_45ACP_Cylinder","Munição - Zubr .45",80],
			    		["arifle_TRG20_F",nil,50000],
						["30Rnd_556x45_Stanag","Munição - TRG-20 5.56mm",500],
						["arifle_SDAR_F",nil,60000],
						["20Rnd_556x45_UW_mag","Munição - SDAR 5.56mm",1000],
						["muzzle_snds_M","Silenciador 5.56mm",1000],
						["arifle_Katiba_F",nil,100000],
						["30Rnd_65x39_caseless_green","Munição - Katiba 6.5mm",1000],
						["muzzle_snds_H","Silenciador 6.5mm",30000],
						["srifle_EBR_F",nil,250000],
						["20Rnd_762x51_Mag","Munição - MK18 7.62mm",2000],
						["LMG_Zafir_F",nil,300000],
						["150Rnd_762x54_Box","Munição - Zafir 7.62mm",5000],
						["optic_Holosight",nil,2000],
						["acc_flashlight",nil,3000],
						["optic_Hamr",nil,15000],
						["optic_Arco",nil,25000],
						["optic_Lrps",nil,50000],
						["optic_DMS",nil,35000],
						["MiniGrenade",nil,80000],
						["SmokeShell",nil,5000],
						["SmokeShellRed",nil,5000],
						["SmokeShellGreen",nil,5000],
						["SmokeShellYellow",nil,5000],
						["SmokeShellPurple",nil,5000],
						["SmokeShellOrange",nil,5000]
					]
				];
			};
		};
	};

	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Você não é um Civil"};
			case (!license_civ_gun): {"Você não tem nenhuma licença de arma!"};
			default
			{
				["Loja de Arma",
					[
						["hgun_P07_F",nil,20000],
						["16Rnd_9x21_Mag","Munição - P07 9mm",25],
						["hgun_ACPC2_F",nil,25000],
						["9Rnd_45ACP_Mag","Munição - ACP-C2 .45",45],
						["hgun_Pistol_heavy_02_F",nil,35000],
						["6Rnd_45ACP_Cylinder","Munição - Zubr .45",80],
						["hgun_PDW2000_F",nil,50000],
						["30Rnd_9x21_Mag","Munição - PDW2000 9mm",150],
						["optic_ACO_grn_smg",nil,8000]
					]
				];
			};
		};
	};

	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"Você não é um doador!"};
			case (__GETC__(life_donator) == 1):
			{
				["Loja de doador lvl 1",
					[
						["Rangefinder",nil,20000],
						["hgun_P07_F",nil,15000],
						["16Rnd_9x21_Mag","Munição - P07 9mm",20],
						["hgun_ACPC2_F",nil,20000],
						["9Rnd_45ACP_Mag","Munição - ACP-C2 .45",30],
						["hgun_Pistol_heavy_02_F",nil,28000],
						["6Rnd_45ACP_Cylinder","Munição - Zubr .45",50],
			    		["arifle_TRG20_F",nil,30000],
						["30Rnd_556x45_Stanag","Munição - TRG-20 5.56mm",800],
						["arifle_SDAR_F",nil,40000],
						["20Rnd_556x45_UW_mag","Munição SDAR 5.56mm",1000],
						["muzzle_snds_M","Silenciador 5.56mm",800],
						["arifle_Katiba_F",nil,60000],
						["30Rnd_65x39_caseless_green","Munição - Katiba 6.5mm",1200],
						["muzzle_snds_H","Silenciador 6.5mm",18000],
						["srifle_EBR_F",nil,180000],
						["20Rnd_762x51_Mag","Munição - MK18 7.62mm",4000],
						["muzzle_snds_B","Silenciador 7.62mm",30000],
						["srifle_DMR_03_multicam_F",nil,500000],
						["20Rnd_762x51_Mag","Munição - MK1 7.62mm",3500],
						["LMG_Zafir_F",nil,210000],
						["150Rnd_762x54_Box","Munição - Zafir 7.62mm",6000],
						["optic_Holosight",nil,1600],
						["acc_flashlight",nil,2200],
						["optic_Hamr",nil,10000],
						["optic_Arco",nil,18000],
						["optic_DMS",nil,23000],
						["optic_Lrps",nil,28000],
						["MiniGrenade",nil,50000],
						["SmokeShell",nil,3000],
						["SmokeShellRed",nil,3000],
						["SmokeShellGreen",nil,3000],
						["SmokeShellYellow",nil,3000],
						["SmokeShellPurple",nil,3000],
						["SmokeShellOrange",nil,3000]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["Loja de doador lvl 2",
					[
						["Rangefinder",nil,20000],
						["hgun_P07_F",nil,15000],
						["16Rnd_9x21_Mag","Munição - P07 9mm",20],
						["hgun_ACPC2_F",nil,20000],
						["9Rnd_45ACP_Mag","Munição - ACP-C2 .45",30],
						["hgun_Pistol_heavy_02_F",nil,28000],
						["6Rnd_45ACP_Cylinder","Munição - Zubr .45",50],
			    		["arifle_TRG20_F",nil,30000],
						["30Rnd_556x45_Stanag","Munição - TRG-20 5.56mm",800],
						["arifle_SDAR_F",nil,40000],
						["20Rnd_556x45_UW_mag","Munição - SDAR 5.56mm",1000],
						["muzzle_snds_M","Silenciador 5.56mm",800],
						["arifle_Katiba_F",nil,60000],
						["30Rnd_65x39_caseless_green","Munição - Katiba 6.5mm",1200],
						["LMG_Mk200_F",nil,80000],
						["200Rnd_65x39_cased_Box","Munição - MK200 6.5mm",1600],
						["muzzle_snds_H","Silenciador 6.5mm",18000],
						["srifle_EBR_F",nil,180000],
						["20Rnd_762x51_Mag","Munição - MK18 7.62mm",4000],
						["muzzle_snds_B","Silenciador 7.62mm",30000],
						["LMG_Zafir_F",nil,210000],
						["150Rnd_762x54_Box","Munição - Zafir 7.62mm",4000],
						["srifle_DMR_03_multicam_F",nil,500000],
						["20Rnd_762x51_Mag","Munição - MK1 7.62mm",3500],
						["muzzle_snds_B","Silenciador 7.62mm",30000],
						["srifle_DMR_02_camo_F",nil,500000],
						["10Rnd_338_Mag","Munição - MAR-10 .388",3500],
						["muzzle_snds_338_san","Silenciador .388",20000],
						["srifle_DMR_05_blk_F",nil,500000],
						["10Rnd_93x64_DMR_05_Mag","Munição - Cyrus 9.3mm",3500],
						["muzzle_snds_93mmg","Silenciador 9.3mm",20000],
						["MMG_01_hex_F",nil,500000],
						["150Rnd_93x64_Mag","Munição - NAVID 9.3mm",3500],
						["muzzle_snds_93mmg","Silenciador 9.3mm",20000],
						["MMG_02_camo_F",nil,500000],
						["130Rnd_338_Mag","Munição - SPMG .388",3500],
						["muzzle_snds_338_black","Silenciador .388",20000],
						["optic_Holosight",nil,1600],
						["acc_flashlight",nil,2200],
						["optic_Hamr",nil,10000],
						["optic_Arco",nil,18000],
						["optic_DMS",nil,23000],
						["optic_Lrps",nil,28000],
						["optic_Nightstalker",nil,50000],
						["MiniGrenade",nil,50000],
						["SmokeShell",nil,3000],
						["SmokeShellRed",nil,3000],
						["SmokeShellGreen",nil,3000],
						["SmokeShellYellow",nil,3000],
						["SmokeShellPurple",nil,3000],
						["SmokeShellOrange",nil,3000]
					]
				];
			};

			case (__GETC__(life_donator) == 3):
			{
				["Loja de doador lvl 3",
					[
						["Rangefinder",nil,20000],
						["hgun_P07_F",nil,15000],
						["16Rnd_9x21_Mag","Munição - P07 9mm",20],
						["hgun_ACPC2_F",nil,20000],
						["9Rnd_45ACP_Mag","Munição - ACP-C2 .45",30],
						["hgun_Pistol_heavy_02_F",nil,28000],
						["6Rnd_45ACP_Cylinder","Munição - Zubr .45",50],
			    		["arifle_TRG20_F",nil,30000],
						["30Rnd_556x45_Stanag","Munição - TRG-20 5.56mm",800],
						["arifle_SDAR_F",nil,40000],
						["20Rnd_556x45_UW_mag","Munição - SDAR 5.56mm",500],
						["muzzle_snds_M","Silenciador 5.56mm",800],
						["arifle_Katiba_F",nil,60000],
						["30Rnd_65x39_caseless_green","Munição - Katiba 6.5mm",900],
						["LMG_Mk200_F",nil,80000],
						["200Rnd_65x39_cased_Box","Munição - MK200 6.5mm",1000],
						["muzzle_snds_H","Silenciador 6.5mm",6000],
						["srifle_EBR_F",nil,180000],
						["20Rnd_762x51_Mag","Munição - MK18 7.62mm",4000],
						["muzzle_snds_B","Silenciador 7.62mm",30000],
						["LMG_Zafir_F",nil,250000],
						["150Rnd_762x54_Box","Munição - Zafir 7.62mm",3000],
						["srifle_DMR_03_multicam_F",nil,200000],
						["20Rnd_762x51_Mag","Munição - MK1 7.62mm",3500],
						["muzzle_snds_B","Silenciador 7.62mm",30000],
						["srifle_DMR_02_camo_F",nil,350000],
						["10Rnd_338_Mag","Munição - MAR-10 .388",3500],
						["muzzle_snds_338_sand","Silenciador .388",20000],
						["srifle_DMR_05_blk_F",nil,350000],
						["10Rnd_93x64_DMR_05_Mag","Munição - Cyrus 9.3mm",3500],
						["muzzle_snds_93mmg","Silenciador 9.3mm",20000],
						["MMG_01_hex_F",nil,350000],
						["150Rnd_93x64_Mag","Munição - NAVID 9.3mm",3500],
						["muzzle_snds_93mmg","Silenciador 9.3mm",20000],
						["MMG_02_camo_F",nil,350000],
						["130Rnd_338_Mag","Munição - SPMG .388",3500],
						["muzzle_snds_338_sand","Silenciador .388",20000],
						["srifle_LRR_camo_F",nil,500000],
						["7Rnd_408_Mag","Munição - M320 LRR .408",35000],
						["optic_Holosight",nil,1600],
						["acc_flashlight",nil,2200],
						["optic_Hamr",nil,10000],
						["optic_Arco",nil,18000],
						["optic_MRCO",nil,23000],
						["optic_DMS",nil,23000],
						["optic_Lrps",nil,28000],
						["optic_SOS",nil,28000],
						["optic_KHS_tan",nil,28000],
						["optic_AMS_snd",nil,28000],
						["bipod_01_F_snd",nil,28000],
						["bipod_01_F_mtp",nil,28000],
						["bipod_02_F_tan",nil,28000],
						["bipod_03_F_blk",nil,28000],
						["optic_Nightstalker",nil,28000],
						["MiniGrenade",nil,50000],
						["SmokeShell",nil,3000],
						["SmokeShellRed",nil,3000],
						["SmokeShellGreen",nil,3000],
						["SmokeShellYellow",nil,3000],
						["SmokeShellPurple",nil,3000],
						["SmokeShellOrange",nil,3000]
					]
				];
		    };
		};
	};

	case "genstore":
	{
		["Mercado geral",
			[
				["Binocular",nil,1500],
				["ItemGPS",nil,3000],
				["ItemMap",nil,100],
				["ItemCompass",nil,100],
				["ItemWatch",nil,100],
				["ToolKit",nil,5000],
				["FirstAidKit",nil,3000],
				["NVGoggles",nil,5000],
				["Chemlight_red",nil,5000]
			]
		];
	};

case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Você não é um civil"};
			default
			{
				["Loja de armas rebeldes",
					[
						["hgun_P07_F",nil,20000],
						["16Rnd_9x21_Mag","Munição - P07 9mm",25],
						["hgun_ACPC2_F",nil,25000],
						["9Rnd_45ACP_Mag","Munição - ACP-C2 .45",45],
						["hgun_Pistol_heavy_02_F",nil,35000],
						["6Rnd_45ACP_Cylinder","Munição - Zubr .45",80],
			    		["arifle_TRG20_F",nil,50000],
						["30Rnd_556x45_Stanag","Munição - TRG-20 5.56mm",1000],
						["arifle_SDAR_F",nil,60000],
						["30Rnd_65x39_caseless_green","Munição - Katiba 6.5mm",2000],
						["LMG_Zafir_F",nil,400000],
						["150Rnd_762x54_Box","Munição - Zafir 7.62mm",6000],
						["srifle_DMR_03_multicam_F",nil,700000],
						["20Rnd_762x51_Mag","Munição - MK1 7.62mm",5000],
						["MMG_02_camo_F",nil,2200000],
						["130Rnd_338_Mag","Munição - SPMG .388",10000],
						["optic_Holosight",nil,2000],
						["acc_flashlight",nil,3000],
						["optic_Hamr",nil,15000],
						["optic_Arco",nil,25000],
						["SmokeShell",nil,5000],
						["SmokeShellRed",nil,5000],
						["SmokeShellGreen",nil,5000],
						["SmokeShellYellow",nil,5000],
						["SmokeShellPurple",nil,5000],
						["SmokeShellOrange",nil,5000]
					]
				];
			};
		};
	};

	case "uranium":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"Você não é um civil"};
            case (!license_civ_uranium): {"Você precisa de uma licença de urânio"};
            default
            {
                ["Urânio Shop",
                    [
                        ["ToolKit",nil,200],
                        ["FirstAidKit",nil,100],
                        ["U_I_HeliPilotCoveralls","Terno anti-radiação",50000]
                    ]
                ];
            };
        };
    };
};
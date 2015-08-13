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
						["20Rnd_556x45_UW_mag","Munição Taser Rifle",10000],
						["hgun_Rook40_F","Taser Pistola",15000],
						["hgun_Rook40_snds_F","Taser Pistola Silenciador",200],
						["16Rnd_9x21_Mag","Munição Taser Pistola",100]
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

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Você não é um policial"};
			case (__GETC__(life_coplevel) != 2): {"Você não é um Cabo"};
			default
			{
				["Loja de Cabo",
					[
						["Rangefinder",nil,5000],
						["arifle_sdar_F","Taser Rifle",30000],
                        ["20Rnd_556x45_UW_mag","Munição Taser Rifle",10000],
						["hgun_Rook40_F","Taser Pistola",15000],
						["hgun_Rook40_snds_F","Taser Pistola Silenciador",200],
						["16Rnd_9x21_Mag","Munição Taser Pistola",100],
						["arifle_MX_F",nil,65000],
						["30Rnd_65x39_caseless_mag",nil,250],
						["optic_Arco",nil,10000]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Você não é um policial"};
			case (__GETC__(life_coplevel) != 3): {"Você não é Sargento"};
			default
			{
				["Loja de Sargento",
					[
						["Rangefinder",nil,5000],
						["arifle_sdar_F","Taser Rifle",30000],
                        ["20Rnd_556x45_UW_mag","Munição Taser Rifle",10000],
						["hgun_Rook40_F","Taser Pistola",15000],
						["hgun_Rook40_snds_F","Taser Pistola Silenciador",200],
						["16Rnd_9x21_Mag","Munição Taser Pistola",100],
						["arifle_MX_F",nil,65000],
						["arifle_MX_Black_Hamr_pointer_F",nil,70000],
						["30Rnd_65x39_caseless_mag","Munição MXC 6.5mm",250],
						["muzzle_snds_H","Silenciador 6.5mm",2750],
						["SMG_02_ACO_F",nil,15000],
						["30Rnd_9x21_Mag","Munição Sting 9mm",100],
						["hgun_ACPC2_F",nil,17500],
						["9Rnd_45ACP_Mag","Munição ACP-C2 .45",100],
						["HandGrenade_Stone","Granada de Luz",15000],
						["optic_Arco",nil,25000],
						["optic_Lrps",nil,50000],
						["optic_SOS",nil,50000],
						["optic_MRCO",nil,35000],
						["optic_NVS",nil,100000]
					]
				];
			};
		};
	};

	case "cop_kommisar":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Você não é um policial"};
			case (__GETC__(life_coplevel) != 4): {"Você não é um Tenente"};
			default
			{
				["Loja de Tenente",
					[
						["Rangefinder",nil,5000],
						["arifle_sdar_F","Taser Rifle",30000],
                        ["20Rnd_556x45_UW_mag","Munição Taser Rifle",10000],
						["hgun_Rook40_F","Taser Pistola",15000],
						["hgun_Rook40_snds_F","Taser Pistola Silenciador",200],
						["16Rnd_9x21_Mag","Munição Taser Pistola",100],
						["arifle_MX_F",nil,65000],
						["arifle_MX_Black_Hamr_pointer_F",nil,70000],
						["30Rnd_65x39_caseless_mag","Munição MXC  6.5mm",250],
						["muzzle_snds_H","Silenciador 6.5mm",2750],
						["SMG_02_ACO_F",nil,15000],
						["30Rnd_9x21_Mag","Munição Sting 9mm",100],
						["hgun_ACPC2_F",nil,17500],
						["9Rnd_45ACP_Mag","Munição ACP-C2 .45",100],
						["srifle_DMR_05_blk_F",nil,400000],
						["10Rnd_93x64_DMR_05_Mag","Munição Cyrus 9.3mm",7000],
						["HandGrenade_Stone","Granada de Luz",50000],
						["optic_Arco",nil,20000],
						["optic_Lrps",nil,40000],
						["optic_SOS",nil,40000],
						["optic_MRCO",nil,30000],
						["optic_NVS",nil,80000]
					]
				];
			};
		};
	};

	case "cop_sek":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Você não é um policial"};
			case (__GETC__(life_coplevel) != 5): {"Você não é um Capitão"};
			default
			{
				["Loja de Capitão",
					[
						["Rangefinder",nil,5000],
						["arifle_sdar_F","Taser Rifle",30000],
                        ["20Rnd_556x45_UW_mag","Munição Taser Rifle",10000],
						["hgun_Rook40_F","Taser Pistola",15000],
						["hgun_Rook40_snds_F","Taser Pistola Silenciador",200],
						["16Rnd_9x21_Mag","Munição Taser Pistola",100],
						["arifle_MX_F",nil,65000],
						["arifle_MX_Black_Hamr_pointer_F",nil,70000],
						["30Rnd_65x39_caseless_mag","Munição MXC  6.5mm",250],
						["muzzle_snds_H","Silenciador 6.5mm",2750],
						["SMG_02_ACO_F",nil,15000],
						["30Rnd_9x21_Mag","Munição Sting 9mm",100],
						["hgun_ACPC2_F",nil,17500],
						["9Rnd_45ACP_Mag","Munição ACP-C2 .45",100],
						["srifle_DMR_05_blk_F",nil,350000],
						["10Rnd_93x64_DMR_05_Mag","Munição Cyrus 9.3mm",5000],
						["muzzle_snds_93mmg","Silenciador 9.3mm",30000],
						["HandGrenade_Stone","Granada de Luz",35000],
						["optic_Arco",nil,15000],
						["optic_Lrps",nil,30000],
						["optic_SOS",nil,30000],
						["optic_MRCO",nil,25000],
						["optic_NVS",nil,70000]
					]
				];
			};
		};
	};

	case "cop_gsg":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Você não é um policial"};
			case (__GETC__(life_coplevel) != 6): {"Você não é um Caveira"};
			default
			{
				["Loja do B.O.P.E",
					[
						["Rangefinder",nil,5000],
						["arifle_sdar_F","Taser Rifle",30000],
                        ["20Rnd_556x45_UW_mag","Munição - Taser Rifle",10000],
						["hgun_Rook40_F","Taser Pistola",15000],
						["hgun_Rook40_snds_F","Taser Pistola Silenciador",200],
						["16Rnd_9x21_Mag","Munição - Taser Pistola",100],
						["arifle_MX_F",nil,65000],
						["arifle_MX_Black_Hamr_pointer_F",nil,70000],
						["30Rnd_65x39_caseless_mag","Munição - MXC  6.5mm",250],
						["muzzle_snds_H","Silenciador 6.5mm",2750],
						["SMG_02_ACO_F",nil,15000],
						["30Rnd_9x21_Mag","Munição - Sting 9mm",100],
						["hgun_ACPC2_F",nil,17500],
						["9Rnd_45ACP_Mag","Munição - ACP-C2 .45",100],
						["srifle_GM6_F",nil,800000],
						["5Rnd_127x108_Mag","Munição - GM6 Lynx 12.7mm",50000],
						["srifle_DMR_05_blk_F",nil,500000],
						["10Rnd_93x64_DMR_05_Mag","Munição - Cyrus 9.3mm",3500],
						["muzzle_snds_93mmg","Silenciador 9.3mm",20000],
						["HandGrenade_Stone","Granada de Luz",15000],
						["SmokeShellBlue","Granada de Efeito Moral",70000],
						["optic_Arco",nil,10000],
						["optic_Lrps",nil,20000],
						["optic_SOS",nil,20000],
						["optic_MRCO",nil,15000],
						["optic_NVS",nil,50000],
						["B_UavTerminal",nil,100000]
					]
				];
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
						["Rangefinder",nil,30000],
						["hgun_P07_F",nil,20000],
						["16Rnd_9x21_Mag","Munição - P07 9mm",25],
						["hgun_ACPC2_F",nil,25000],
						["9Rnd_45ACP_Mag","Munição - ACP-C2 .45",45],
						["hgun_Pistol_heavy_02_F",nil,35000],
						["6Rnd_45ACP_Cylinder","Munição - Zubr .45",80],
			    		["arifle_TRG20_F",nil,50000],
						["30Rnd_556x45_Stanag","Munição - TRG-20 5.56mm",1000],
						["arifle_SDAR_F",nil,60000],
						["20Rnd_556x45_UW_mag","Munição - SDAR 5.56mm",1300],
						["muzzle_snds_M","Silenciador 5.56mm",1000],
						["arifle_Katiba_F",nil,100000],
						["30Rnd_65x39_caseless_green","Munição - Katiba 6.5mm",2000],
						["muzzle_snds_H","Silenciador 6.5mm",30000],
						["srifle_DMR_01_F",nil,200000],
						["10Rnd_762x51_Mag","Munição - Rahlm 7.62mm",5000],
						["srifle_EBR_F",nil,250000],
						["20Rnd_762x51_Mag","Munição - MK18 7.62mm",7000],
						["LMG_Zafir_F",nil,300000],
						["150Rnd_762x54_Box","Munição - Zafir 7.62mm",10000],
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
						["srifle_DMR_01_F",nil,120000],
						["10Rnd_762x51_Mag","Munição - Rahlm 7.62mm",3000],
						["srifle_EBR_F",nil,180000],
						["20Rnd_762x51_Mag","Munição - MK18 7.62mm",4000],
						["muzzle_snds_B","Silenciador 7.62mm",30000],
						["LMG_Zafir_F",nil,210000],
						["150Rnd_762x54_Box","Munição - Zafir 7.62mm",6000],
						["srifle_LRR_F",nil,1800000],
						["7Rnd_408_Mag","Munição - M320 LRR .408",60000],
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
						["srifle_DMR_01_F",nil,120000],
						["10Rnd_762x51_Mag","Munição - Rahlm 7.62mm",3000],
						["srifle_EBR_F",nil,180000],
						["20Rnd_762x51_Mag","Munição - MK18 7.62mm",4000],
						["muzzle_snds_B","Silenciador 7.62mm",30000],
						["LMG_Zafir_F",nil,210000],
						["150Rnd_762x54_Box","Munição - Zafir 7.62mm",6000],
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
						["srifle_DMR_04_Tan_F",nil,500000],
						["10Rnd_127x54_Mag","Munição - ASP-1 12.7mm",60000],
						["srifle_LRR_camo_F",nil,1300000],
						["7Rnd_408_Mag","Munição - M320 LRR .408",50000],
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
						["20Rnd_556x45_UW_mag","Munição - SDAR 5.56mm",1000],
						["muzzle_snds_M","Silenciador 5.56mm",800],
						["arifle_Katiba_F",nil,60000],
						["30Rnd_65x39_caseless_green","Munição - Katiba 6.5mm",1200],
						["LMG_Mk200_F",nil,80000],
						["200Rnd_65x39_cased_Box","Munição - MK200 6.5mm",1600],
						["muzzle_snds_H","Silenciador 6.5mm",18000],
						["srifle_DMR_01_F",nil,120000],
						["10Rnd_762x51_Mag","Munição - Rahlm 7.62mm",3000],
						["srifle_EBR_F",nil,180000],
						["20Rnd_762x51_Mag","Munição - MK18 7.62mm",4000],
						["muzzle_snds_B","Silenciador 7.62mm",30000],
						["LMG_Zafir_F",nil,210000],
						["150Rnd_762x54_Box","Munição - Zafir 7.62mm",6000],
						["srifle_DMR_03_multicam_F",nil,500000],
						["20Rnd_762x51_Mag","Munição - MK1 7.62mm",3500],
						["muzzle_snds_B","Silenciador 7.62mm",30000],
						["srifle_DMR_02_camo_F",nil,500000],
						["10Rnd_338_Mag","Munição - MAR-10 .388",3500],
						["muzzle_snds_338_sand","Silenciador .388",20000],
						["srifle_DMR_05_blk_F",nil,500000],
						["10Rnd_93x64_DMR_05_Mag","Munição - Cyrus 9.3mm",3500],
						["muzzle_snds_93mmg","Silenciador 9.3mm",20000],
						["MMG_01_hex_F",nil,500000],
						["150Rnd_93x64_Mag","Munição - NAVID 9.3mm",3500],
						["muzzle_snds_93mmg","Silenciador 9.3mm",20000],
						["MMG_02_camo_F",nil,500000],
						["130Rnd_338_Mag","Munição - SPMG .388",3500],
						["muzzle_snds_338_sand","Silenciador .388",20000],
						["srifle_DMR_04_Tan_F",nil,500000],
						["Rnd_127x54_Mag","Munição - ASP-1 12.7mm",50000],
						["srifle_LRR_camo_F",nil,800000],
						["7Rnd_408_Mag","Munição - M320 LRR .408",45000],
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
						["srifle_DMR_01_F",nil,200000],
						["10Rnd_762x51_Mag","Munição - Rahlm 7.62mm",5000],
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
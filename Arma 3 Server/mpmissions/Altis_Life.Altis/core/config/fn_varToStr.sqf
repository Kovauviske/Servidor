/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	case "life_inv_oilu": {"Petroleo"};
	case "life_inv_oilp": {"Diesel"};
	case "life_inv_heroinu": {"Heroina não processada"};
	case "life_inv_heroinp": {"Heroina processada"};
	case "life_inv_cannabis": {"Maconha não processada"};
	case "life_inv_marijuana": {"Maconha processada"};
	case "life_inv_apple": {"Maçã"};
	case "life_inv_rabbit": {"Carne de coelho"};
	case "life_inv_salema": {"Sardinha"};
	case "life_inv_ornate": {"Salmão"};
	case "life_inv_mackerel": {"Tilápia"};
	case "life_inv_tuna": {"Atum"};
	case "life_inv_mullet": {"Tainha"};
	case "life_inv_catshark": {"Tubarão gato"};
	case "life_inv_turtle": {"Tartaruga"};
	case "life_inv_fishingpoles": {"Isca"};
	case "life_inv_water": {"Garrafa de agua"};
	case "life_inv_coffee": {"Cafe"};
	case "life_inv_turtlesoup": {"Sopa de Tartaruga"};
	case "life_inv_donuts": {"Rosquinhas"};
	case "life_inv_fuelE": {"Galão de Gasolina (Vazio)"};
	case "life_inv_fuelF": {"Galão de Gasolina (Cheio)"};
	case "life_inv_pickaxe": {"Picareta"};
	case "life_inv_copperore": {"Cobre"};
	case "life_inv_ironore": {"Ferro"};
	case "life_inv_ironr": {"Barra de Ferro"};
	case "life_inv_copperr": {"Barra de Cobre"};
	case "life_inv_sand": {"Areia"};
	case "life_inv_salt": {"Pedra de Sal"};
	case "life_inv_saltr": {"Sal Refinado"};
	case "life_inv_glass": {"Vidro"};
	case "life_inv_diamond": {"Diamante Bruto"};
	case "life_inv_diamondr": {"Diamante Lapidado"};
	case "life_inv_tbacon": {"Toisin"};
	case "life_inv_redgull": {"RedBull"};
	case "life_inv_lockpick": {"LockPick"};
	case "life_inv_peach": {"Pêssego"};
	case "life_inv_coke": {"Cocaina não processada"};
	case "life_inv_cokep": {"Cocaina processada"};
	case "life_inv_spikeStrip": {"SpikeStrip"};
	case "life_inv_rock": {"Pedra"};
	case "life_inv_cement": {"Cimento"};
	case "life_inv_goldbar": {"Barra de Ouro"};
	case "life_inv_wine": {"Vinho"};
	case "life_inv_grapes": {"Uvas"};
	case "life_inv_methu": {"Metanfetamina Não Processada"};
	case "life_inv_methp": {"Metanfetamina Processada"};
	case "life_inv_storage1": {"Caixa Pequena"};
	case "life_inv_storage2": {"Caixa Grande"};
	case "life_inv_battery": {"Bateria de Telefone"};
	case "life_inv_blastingcharge": {"Bomba - C4"};
	case "life_inv_boltcutter": {"Alicate"};
	case "life_inv_defusekit": {"Kit Anti-Bomba"};
	case "life_inv_painkillers": {"Analgésico"};
	case "life_inv_morphium": {"Morfina"};
	case "life_inv_zipties": {"Algemas"};
	case "life_inv_storagesmall": {"Caixa de Armazenamento P"};
	case "life_inv_storagebig": {"Caixa de Armazenamento G"};
	case "life_inv_mauer": {"Bloqueio de estrada"};
	case "life_inv_mash": {"Mistura"};
	case "life_inv_yeast": {"Fermento"};
	case "life_inv_rye": {"Centeio"};
	case "life_inv_hops": {"Lúpulo"};
	case "life_inv_whiskey": {"Uísque destilado"};
	case "life_inv_beerp": {"Cerveja fermentada"};
	case "life_inv_bottles": {"Garrafas de vidro"};
	case "life_inv_cornmeal": {"Farinha de Milho"};
	case "life_inv_bottledwhiskey": {"RedLabel"};
	case "life_inv_bottledbeer": {"Itai"};
	case "life_inv_bottledshine": {"Licor de Amarula"};
	case "life_inv_moonshine": {"Amalula destilada"};
	case "life_inv_puranium": {"Mistura de urânio"}; // Add This
    case "life_inv_ipuranium": {"Uranio impuro"}; // Add This
    case "life_inv_uranium1": {"Uranio lvl1"}; // Add This
    case "life_inv_uranium2": {"Uranio lvl2"}; // Add This
    case "life_inv_uranium3": {"Uranio lvl3"}; // Add This
    case "life_inv_uranium4": {"Uranio lvl4"}; // Add This
    case "life_inv_uranium": {"Uranio"}; // Add This
	case "life_inv_kidney": {"Rim"};
	case "life_inv_scalpel": {"Bisturi"};

	//License Block
	case "license_civ_driver": {"Carteira de motorista"};
	case "license_civ_air": {"Licença de piloto"};
	case "license_civ_heroin": {"Traficante de Heroina"};
	case "license_civ_gang": {"Licença de Gangue"};
	case "license_civ_oil": {"Processamento de óleo"};
	case "license_civ_dive": {"Licença de Mergulho"};
	case "license_civ_boat": {"Licença de Barco"};
	case "license_civ_gun": {"Porte de Armas"};
	case "license_cop_air": {"Licença Policial Aeria"};
	case "license_cop_swat": {"Licença para BOPE"};
	case "license_cop_cg": {"Guarda Costeira"};
	case "license_civ_rebel": {"Licença Rebelde"};
	case "license_civ_truck": {"Licença de Caminhão"};
	case "license_civ_diamond": {"Licença de Diamante"};
	case "license_civ_copper": {"Licença de Cobre"};
	case "license_civ_iron": {"Licença de Ferro"};
	case "license_civ_sand": {"Licença de Areia"};
	case "license_civ_salt": {"Licença de Sal"};
	case "license_civ_coke": {"Licença de Cocaina"};
	case "license_civ_marijuana": {"Traficante de Maconha"};
	case "license_civ_cement": {"Licença de Cimento"};
	case "license_civ_meth": {"Licença de Metafetamina"};
	case "license_civ_grapes": {"Licença de Vinho"};
	case "license_civ_moonshine": {"Licença de Amarula"};
	case "license_civ_meth": {"Licença de Metafetamina"};
	case "license_med_air": {"Licença Aeria de Medico"};
	case "license_civ_home": {"Licença de Casa"};
	case "license_med_adac": {"Licença de Mecanico"};
	case "license_civ_stiller": {"Licença de Destilador"};
	case "license_civ_liquor": {"Licença de bebidas"};
	case "license_civ_bottler": {"Licença de engarrafamento"};
	case "license_civ_uranium": {"Licença de Uranio"};
};

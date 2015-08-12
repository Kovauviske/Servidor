/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "187V": {_type = ["Passar por cima de um jogador",10000]};
	case "187": {_type = ["Assassinato",20000]};
	case "901": {_type = ["Fuga Da Prisão",15000]};
	case "261": {_type = ["Estrupo",1000]}; //What type of sick bastard would add this?
	case "261A": {_type = ["Tentativa de Estrupo",5000]};
	case "215": {_type = ["Tentativa de roubo de veículo",10000]};
	case "213": {_type = ["O uso de explosivos ilegais",10000]};
	case "211": {_type = ["Roubo ao Posto/Player",10000]};
	case "207": {_type = ["Sequestro",60000]};
	case "207A": {_type = ["Tentativa de Sequestro",40000]};
	case "487": {_type = ["Roubo de veículo",20000]};
	case "488": {_type = ["Roubo ao Posto/Player",15000]};
	case "480": {_type = ["Bater e correr",1300]};
	case "481": {_type = ["Posse de drogas",10000]};
	case "482": {_type = ["Usuario de Drogas",5000]};
	case "483": {_type = ["Tráfico de drogas",30000]};
	case "459": {_type = ["Roubo a Residencia",20000]};
	case "390": {_type = ["Dirigir Bebado",15000]};
	case "919": {_type = ["Traficante de Orgão",50000]};
    case "485": {_type = ["Tentou arromar algemas",2500]};
    case "486": {_type = ["Lockpicked handcuffs",5000]};

	case "1": {_type = ["Dirigir sem licença",15000]};
    case "2": {_type = ["Conduzindo de um veículo roubado",10000]};
    case "3": {_type = ["Conduzindo de um veículo roubado",20000]};
    case "4": {_type = ["Condução a noite sem farois",1500]};
    case "5": {_type = ["Excesso de velocidade",6000]};
    case "6": {_type = ["Condução perigosa",7500]};
    case "7": {_type = ["Tentativa de roubo ao veículo da polícia.",15000]};
    case "8": {_type = ["Roubo de veículos da polícia",25000]};
    case "9": {_type = ["Aterrissagem sem permissão",20000]};
    case "10": {_type = ["Condução de veículos ilegais", 25000]};
    case "11": {_type = ["Evadiu do local de acidente",5000]};
    case "12": {_type = ["Fugiu da polícia",17500]};
    case "13": {_type = ["Atropelou outro jogador",30000]};
    case "14": {_type = ["Bloqueios de estradas ilegais",15000]};
    case "15": {_type = ["Desordem dentro da cidade",45000]};
    case "16": {_type = ["Não compriu as regras",5000]};
    case "17": {_type = ["Insultar um médico/Cop",15000]};
    case "18": {_type = ["Agredir um policial",20000]};
    case "19": {_type = ["Derrubar poste dentro da safezone",50000]};
    case "20": {_type = ["Matar um policial",80000]};
    case "21": {_type = ["Insulto a polícia / Samu / Admin",80000]};
    case "22": {_type = ["Destruição de propriedade polícial",15000]};
    case "23": {_type = ["Delitos de drogas",30000]};
    case "24": {_type = ["Posse de armas sem licença",70000]};
    case "25": {_type = ["Arma em Ponho dentro da Cidade",50000]};
    case "26": {_type = ["Posse de uma arma ilegal",150000]};
    case "27": {_type = ["Disparar uma arma dentro de uma cidade",50000]};
    case "28": {_type = ["Sequestro",50000]};
    case "29": {_type = ["Assalto a Posto",60000]};
    case "30": {_type = ["Assalto a banco",1234567]};
    case "31": {_type = ["Assassinato",1234567]};
    case "32": {_type = ["Insurreição",75000]};
    case "33": {_type = ["Ataque de rebeldes",75000]};
    case "34": {_type = ["Ataque / cerco de cidades / Pontos de Verificação",1234567]};
    case "35": {_type = ["Estacionar em uma zona de pouso aérea",75000]};
    case "36": {_type = ["Voar abaixo de 150m acima da cidade",20000]};
    case "37": {_type = ["Fuga Da Prisão",20000]};
    case "38": {_type = ["Voar sem licença de vôo",50000]};
    case "39": {_type = ["Buzinar com frequencia",7500]};
    case "40": {_type = ["Comércio de bens exóticos",50000]};
	case "41": {_type = ["Atingindo cerca de um posto avançado",25000]};
	case "42": {_type = ["Manipulação de Itens ilicitos",25000]};

	case "120S": {_type = ["Excesso de velocidade",5000]};
	case "120H": {_type = ["Dirigir em alta velocidade",8000]};
	case "120WL": {_type = ["Condução sem licença",8000]};
	case "120FS": {_type = ["Condução perigosa",8000]};
	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes pushBack (_type select 0);
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
	else
{
	life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
};
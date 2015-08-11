/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {5000}; //Drivers License cost
	case "boat": {10000}; //Boating license cost
	case "pilot": {100000}; //Pilot/air license cost
	case "gun": {100000}; //Firearm/gun license cost
	case "dive": {2000}; //Diving license cost
	case "oil": {15000}; //Oil processing license cost
	case "cair": {350000}; //Cop Pilot License cost
	case "swat": {10000000}; //Swat License cost
	case "cg": {100000}; //Coast guard license cost
	case "heroin": {60000}; //Heroin processing license cost
	case "marijuana": {50000}; //Marijuana processing license cost
	case "medmarijuana": {100000}; //Medical Marijuana processing license cost
	case "gang": {200000}; //Gang license cost
	case "rebel": {700000}; //Rebel license cost
	case "truck": {60000}; //Truck license cost
	case "diamond": {50000}; //Diamanten Lizenz
	case "salt": {30000}; //Salz Lizenz
	case "cocaine": {120000}; //Kokain Lizenz
	case "sand": {20000}; //Sand Lizenz
	case "iron": {1500}; //Eisen Lizenz
	case "copper": {12000}; //Kupfer Lizenz
	case "cement": {18000}; //Zement Lizenz
	case "grapes": {30000}; //Trauben Lizenz
	case "moonshine": {120000}; //Moonshine Lizenz
	case "meth": {120000}; //Meth Lizenz
	case "medic": {160000}; //Medic Ausbildung
	case "mair": {50000}; //Maische
	case "home": {500000}; //Home Lizenz
	case "adac": {5000000}; //ADAC Lizenz
	case "stiller":{70000}; //Abf?ller
	case "liquor":{90000}; //Desti
	case "bottler":{50000}; //Abf?ller Lizenz
	case "mash":{200000}; //Maische Lizenz
	case "uranium": {500000}; //Uran Lizenz
};
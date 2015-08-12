/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Mercado Civil",["water","rabbit","apple","storagebig","storagesmall","bottledbeer","bottledwhiskey","redgull","battery","tbacon","lockpick","pickaxe","zipties","peach","boltcutter","blastingcharge"]]};
	case "rebel": {["Mercado Rebelde",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "gang": {["Mercado de Gangue", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Mercado de Tartaruga",["turtlesoup","turtle","moonshine"]]};
	case "coffee": {["Caffe",["coffee","donuts"]]};
	case "heroin": {["Traficante",["cocainep","heroinp","marijuana","methp"]]};
	case "fishmarket": {["Loja de Peixe",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Comprador de Vidro",["glass"]]};
	case "iron": {["Deposito",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Comprador de Sal",["salt_r"]]};
	case "cop": {["Mercado de Policial",["donuts","coffee","spikeStrip","mauer","battery","painkillers","redgull","defusekit"]]};
	case "cement": {["Comprador de Cimento",["cement"]]};
	case "beer": {["Loja de Bebidas",["wine"]]};
	case "pharmacy": {["Farmacia",["painkillers","morphium","scalpel","kidney"]]};
	case "medic": {["Suprimentos Medicos",["apple","donuts","coffee","battery","redgull","fuelF"]]};
	case "speakeasy": {["Loja de Bebidas quentes",["bottledbeer","bottledwhiskey","bottledshine"]]};
	case "bar": {["Salão",["bottles","cornmeal"]]};
	case "uranium": {["Mercado de Uranio",["uranium","puranium"]]};
};
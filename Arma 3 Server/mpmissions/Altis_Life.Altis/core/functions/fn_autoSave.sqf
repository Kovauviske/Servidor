/*
	Author: TheTotenkopf für SealDrop.de
*/

while {true} do {
	sleep 1800;
	[] call SOCK_fnc_updateRequest;
	hint "Sua informação jogador é salvo automaticamente para o servidor.\n\n Próxima gravação automática em: 30 minutos"
};
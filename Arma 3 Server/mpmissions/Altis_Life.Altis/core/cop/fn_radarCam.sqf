/*
	File:fn_radarCam.sqf
*/
waitUntil {(!isNil "life_fnc_moveIn") && !isNull (findDisplay 46)};
if((vehicle player isKindOf "Ship") OR (vehicle player isKindOf "Air")) exitWith {};//exit if not a freaking car
private ["_limit","_Velocidade","_Motorista","_ticket","_ticketWL"];
_Motorista = _this select 0;
_Velocidade = _this select 1;
_limit = _this select 2;
//_ticket = 1500;//perm set amount ticket
_ticket = (_Velocidade - _limit) * 100;//variable ticket for licensed Motorista
_ticketWL = (_Velocidade - _limit) * 200;//variable ticket for unlicensed Motorista
//diag_log format["Ticket Valor: %1 - Sp: %2 -- Limit: %3",_ticket,_Velocidade,_limit];
if (_Velocidade > _limit) then {
	if (side _Motorista == civilian) then {
			if(isNil "life_VelocidadeTicket") then {life_VelocidadeTicket = 0;};
			if(isNil "life_VelocidadeCaught") then {life_VelocidadeCaught = 0;};
			diag_log format["Dr:%1 :: Sp:%2 :: Lmt:%3 ::Valor: %4",name _Motorista,round _Velocidade,_limit,[_ticket] call life_fnc_numberText];
			player say3d "PhotoSound";//photosound and ppEffects from prellers radar script
			sleep 0.05;
			"colorCorrections" ppEffectEnable true;
			"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 1],[0.3, 0.3, 0.3, 0.05]];
			"colorCorrections" ppEffectCommit 0;
			sleep 0;
			"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 1]];
			"colorCorrections" ppEffectCommit 0.05;
			sleep 0.05;
			"colorCorrections" ppEffectEnable false;
			sleep 0.1;
			"colorCorrections" ppEffectEnable true;
			"colorCorrections" ppEffectAdjust [1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 1],[0.3, 0.3, 0.3, 0.05]];
			"colorCorrections" ppEffectCommit 0;
			sleep 0;
			"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1],  [1, 1, 1, 1]];
			"colorCorrections" ppEffectCommit 0.05;
			sleep 0.05;
			"colorCorrections" ppEffectEnable false;
		if(license_civ_Motorista OR license_civ_truck ) then {

			life_VelocidadeTicket = life_VelocidadeTicket + 1;
			if(life_VelocidadeTicket <= 3) then {systemChat format["Multa de Numero %1, Pare de ultrapassar o limite de velocidade",life_VelocidadeTicket];};
			if(life_VelocidadeTicket == 4) then {systemChat format["Multa de Numero %1, Proxima vez você vai perder a licença de motorista",life_VelocidadeTicket];};
			if(life_VelocidadeTicket > 4 && life_VelocidadeTicket < 8) exitWith {

					systemChat format["Você recebeu uma multa de numero %1",life_VelocidadeTicket];
					hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Bilhete de estacionamento<br/><t color='#ff0000'><t align='center'><t size='1.5'>Velocidade: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Velocidade Max: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Motorista: %3<br/><t color='#ffffff'><t align='center'><t size='1'>Você recebeu varias multas por excesso de velocidade, agora você irá perder a licença de motorista",round _Velocidade,_limit,name _Motorista];
					[[4],"life_fnc_removeLicenses",_Motorista,FALSE] spawn life_fnc_MP;
					[[getPlayerUID _Motorista,name _Motorista,"120H"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
					[2] call SOCK_fnc_updatePartial;
			};
			if(life_VelocidadeTicket > 8) exitWith {

					vehicle _Motorista setFuel 0.1;
					systemChat format["MULTA DE TRASITO: %1!!!",life_VelocidadeTicket];
					hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar de velocidade<br/><t color='#ff0000'><t align='center'><t size='1.5'>Velocidade: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Velocidade Max: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Motorista: %3<br/>Você esta dirigindo igual um louco, e pode ser preso a qualquer momento",round _Velocidade,_limit,name _Motorista];
					[[getPlayerUID _Motorista,name _Motorista,"120FS"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
					[[4],"life_fnc_removeLicenses",_Motorista,FALSE] spawn life_fnc_MP;
					[2] call SOCK_fnc_updatePartial;
			};
			if(life_atmcash <= _ticket) then
			{
				if(life_atmcash <= _ticket) exitWith
				{
					hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar de velocidade<br/><t color='#ff0000'><t align='center'><t size='1.5'>Velocidade: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Velocidade Max: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Motorista: %3<br/><t color='#ffffff'><t align='center'><t size='1'>Valor: %4 R$<br/>Você recebeu uma multa e não tem dinheiro para pagar, agora você está na lista de procurados",round _Velocidade,_limit,name _Motorista,[_ticket] call life_fnc_numberText];
					[[getPlayerUID _Motorista,name _Motorista,"120S"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
				};
				life_atmcash = life_atmcash - _ticket;
				hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar de velocidade<br/><t color='#ff0000'><t align='center'><t size='1.5'>Velocidade: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Velocidade Max: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Motorista: %3<br/><t color='#ffffff'><t align='center'><t size='1'>Valor: %4 R$",round _Velocidade,_limit,name _Motorista,[_ticket] call life_fnc_numberText];
				diag_log "Ticket paid from player bank";
				[1] call SOCK_fnc_updatePartial;
			} else {

				life_atmcash = life_atmcash - _ticket;
				hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar de velocidade<br/><t color='#ff0000'><t align='center'><t size='1.5'>Velocidade: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Velocidade Max: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Motorista: %3<br/><t color='#ffffff'><t align='center'><t size='1'>Valor: %4 R$",round _Velocidade,_limit,name _Motorista,[_ticket] call life_fnc_numberText];
				diag_log "Ticket paid from player cash";
				[0] call SOCK_fnc_updatePartial;
			};
		} else {

					life_VelocidadeCaught = life_VelocidadeCaught + 1;
					if(life_VelocidadeCaught <= 5) then { systemChat format["Você foi pego %1 vezes dirigindo em alta velocidade sem licença de motorista",life_VelocidadeCaught];};
					if(life_VelocidadeCaught == 6) then { systemChat format["Você foi pego %1 vezes dirigindo em alta velocidade sem licença de motorista",life_VelocidadeCaught];};

					if(life_VelocidadeCaught > 6) exitWith {

							vehicle _Motorista setFuel 0.1;
							systemChat format["MULTA DE TRASITO: %1",life_VelocidadeCaught];
							hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar de velocidade<br/><t color='#ff0000'><t align='center'><t size='1.5'>Velocidade: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Velocidade Max: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Motorista: %3<br/>Você esta dirigindo igual um louco, e pode ser preso a qualquer momento",round _Velocidade,_limit,name _Motorista];
							[[getPlayerUID _Motorista,name _Motorista,"120FSWL"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;

					};
					hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar de velocidade<br/><t color='#ff0000'><t align='center'><t size='1.5'>Velocidade: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Velocidade Max: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Motorista: %3<br/><t color='#ffffff'><t align='center'><t size='1'>Você agora está sendo procurado por dirigir sem licença e esta sujeito a prisão",round _Velocidade,_limit,name _Motorista];
					[[getPlayerUID _Motorista,name _Motorista,"120WL"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
					if(life_atmcash <= _ticketWL) then
					{
						if(life_atmcash <= _ticketWL) exitWith
						{
							hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar de velocidade<br/><t color='#ff0000'><t align='center'><t size='1.5'>Velocidade: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Velocidade Max: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Motorista: %3<br/><t color='#ffffff'><t align='center'><t size='1'>Valor: %4 R$<br/>Você recebeu uma multa e não tem dinheiro para pagar, agora você está na lista de procurados",round _Velocidade,_limit,name _Motorista,[_ticketWL] call life_fnc_numberText];
							[[getPlayerUID _Motorista,name _Motorista,"120S"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
						};
						life_atmcash = life_atmcash - _ticketWL;
						hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar de velocidade<br/><t color='#ff0000'><t align='center'><t size='1.5'>Velocidade: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Velocidade Max: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Motorista: %3<br/><t color='#ffffff'><t align='center'><t size='1'>Valor: %4 R$",round _Velocidade,_limit,name _Motorista,[_ticketWL] call life_fnc_numberText];
						//diag_log "Ticket paid from player bank";//for logging
						[1] call SOCK_fnc_updatePartial;
					} else {

						life_atmcash = life_atmcash - _ticketWL;
						hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Radar de velocidade<br/><t color='#ff0000'><t align='center'><t size='1.5'>Velocidade: %1 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Velocidade Max: %2 km/h<br/><t color='#ffffff'><t align='center'><t size='1'>Motorista: %3<br/><t color='#ffffff'><t align='center'><t size='1'>Valor: %4 R$",round _Velocidade,_limit,name _Motorista,[_ticketWL] call life_fnc_numberText];
						//diag_log "Ticket paid from player cash";//for logging
						[0] call SOCK_fnc_updatePartial;
					};
		};
	};
};
//diag_log "Velocidade cam script done";//for logging
sleep 5;
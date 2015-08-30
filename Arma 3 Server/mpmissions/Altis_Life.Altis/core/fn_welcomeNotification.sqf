/*
	File: fn_welcomeNotification.sqf
	Description:
	Called upon first spawn selection and welcomes our player.
*/
disableUserInput true;
_fadeIn = [] spawn BIS_fnc_VRFadeIn;
waitUntil {scriptDone _fadeIn};
3 cutFadeOut 0;

_sound = ["Intro","Intro2","Intro3","Intro4"] call BIS_fnc_selectRandom;
playSound _sound;

_introCam = "camera" camCreate (player modelToWorldVisual [-5,0,1250]);
_introCam cameraEffect ["internal","back"];
_introCam camSetFov 2.000;
_introCam camSetTarget vehicle player;
_introCam camSetRelPos [0,-1,1250];
_introCam camCommit 0;
waitUntil {camCommitted _introCam};

_introCam camSetFov 2;
_introCam camSetRelPos [0,-5,1.85];
_introCam camCommit 2;
8 cutFadeOut 3;
waitUntil {camCommitted _introCam};

_introCam camSetFov 1;
_introCam camSetRelPos [0,-1,1.85];
_introCam camCommit 3;
waitUntil {camCommitted _introCam};
_introCam cameraEffect ["terminate","back"];
camDestroy _introCam;

life_spawnAnimDone = true;
disableUserInput false;

[] spawn {
	_onScreenTime = 5;
	_role1 = "Bienvenue sur Linox Life";
_role1names = ["Serveur Général"];
_role2 = "Créateurs du Serveur";
_role2names = ["_Fuzz"];
_role3 = "Administrateur du serveur";
_role3names = ["Marvin"];
_role4 = "Modérateur sénior du Serveur";
_role4names = ["Sherlock, Jean Muertos, Mike Kalashnikov"];
_role5 = "Modérateurs du Serveur";
_role5names = ["Jayce Black, Jackson, Leroux, Wong Tung, FatherWater, Toudy123, Arthur"];
_role6 = "Développeurs du Serveur";
_role6names = ["_Fuzz, Jeremy Maxwell"];
_role7 = "TeamSpeak";
_role7names = ["ts.linox.org"];
_role8 = "Site/Forum";
_role8names = ["http://www.linox.org"];
_role9 = "Règlements Principaux";
_role9names = ["Pas de troll, Pas de freekill, Pas de Car-kill, Respectez les autres joueurs, Pas d'insultes, Jouer Role Play, ce serveur n'est pas un WasteLand !!!"];
_role10 = "Évolution";
_role10names = ["Le serveur est en constante évolution, il y a donc possibilité d'y trouver des bugs. Merci de les reporter pour le bien du serveur. Ils seront corrigés dans un délai maximal de 48 heures ! :)"];
_role11 = "Bon jeu à tous!";
_role11names = ["Le staff vous souhaite une excellente session de jeu!"];

	{
		sleep 2;
		_memberFunction = _x select 0;
		_memberNames = _x select 1;
		_finalText = format ["<t size='1' color='#00994C' align='right'>%1<br /></t>", _memberFunction];
		_finalText = _finalText + "<t size='0.80' color='#FFFFFF' align='right'>";
		{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
		_finalText = _finalText + "</t>";
		_onScreenTime + (((count _memberNames) - 1) * 0.5);
		[
			_finalText,
			[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
			[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
			_onScreenTime,
			0.5
		] spawn BIS_fnc_dynamicText;
		sleep (_onScreenTime);
	} forEach [
	//The list below should have exactly the same amount of roles as the list above
		[_role1, _role1names],
		[_role2, _role2names],
		[_role3, _role3names],
		[_role4, _role4names],
		[_role5, _role5names],
		[_role6, _role6names],
		[_role7, _role7names],
		[_role8, _role8names],
		[_role9, _role9names],
		[_role10, _role10names],
		[_role11, _role11names]
	];
};
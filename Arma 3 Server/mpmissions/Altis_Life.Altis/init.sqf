enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

//Exec Scripts and more...
life_versionInfo = "AltisLife F.T.I Version";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf"; //Load the Server Strings
[] execVM "script\fastrope.sqf"; //Load Fastrope
[] execVM "script\0snake&rabbit.sqf";
[] execVM "script\teargas.sqf"; //Load Teargas Script for Cops
[] execVM "script\savezone.sqf"; //Load the Savezones
[] execVM "script\fn_statusBar.sqf"; //Load the Statusbar

enableEnvironment true;


//Performance
setTerrainGrid 25;
setViewDistance 1000;
setObjectViewDistance [800,50];

{[] spawn (_this select 1);
};
    clientStarted = player;

    publicVariableServer "clientStarted";

MAC_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;

};
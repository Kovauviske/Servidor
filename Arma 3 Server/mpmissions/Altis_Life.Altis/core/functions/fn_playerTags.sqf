#include <macro.h>
/*
    File: fn_playerTags.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Adds the tags above other players heads when close and have visible range.
*/
private["_ui","_units"];
#define iconID 78000
#define scale 0.8

if(visibleMap OR {!alive player} OR {dialog}) exitWith {
    500 cutText["","PLAIN"];
};

_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
    500 cutRsc["Life_HUD_nameTags","PLAIN"];
    _ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F"],50];

_units = _units - [player];

{
    private["_name", "_text", "_icon", "_hasName"];
    _name = _x getVariable ["realname", name _x];
    _hasName = if(!isNil {(_x getVariable "realname")}) then {true} else {false};
    _idc = _ui displayCtrl (iconID + _forEachIndex);
    if(!(lineIntersects [eyePos player, eyePos _x, player, _x]) && {!isNil {_x getVariable "realname"}}) then {
        _pos = switch(typeOf _x) do {
            case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
            case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
            default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
        };
        _sPos = worldToScreen _pos;
        _distance = _pos distance player;
        if(count _sPos > 1 && {_distance < 15}) then {
            _icon = "";
            _text = switch (true) do {
                case (_x in (units grpPlayer) && playerSide == civilian): {format["<t color='#00FF00'>%1</t>",(_x getVariable ["realname",name _x])];};
                case(_x getVariable["rank", 0] > 0) : {
                    switch (_x getVariable["rank", 0]) do {
                        case (1) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\private_gs.paa";};
                        case (2) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\corporal_gs.paa";};
                        case (3) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\sergeant_gs.paa";};
                        case (4) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\lieutenant_gs.paa";};
                        case (5) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\captain_gs.paa";};
                        case (6) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\colonel_gs.paa";};
                        case (7) : {_icon = "a3\UI_F\data\GUI\Cfg\Ranks\general_gs.paa";};
                        default {};
                    };
                    switch (_x getVariable["rank", 0]) do {
                        case (1) : {format["<t color='#0000FF'><img image='%2' size='1'></img> [Recruta] %1</t>", _name, _icon];};
                        case (2) : {format["<t color='#0000FF'><img image='%2' size='1'></img> [Cabo] %1</t>", _name, _icon];};
                        case (3) : {format["<t color='#0000FF'><img image='%2' size='1'></img> [Sargento] %1</t>", _name, _icon];};
                        case (4) : {format["<t color='#0000FF'><img image='%2' size='1'></img> [Tenente] %1</t>", _name, _icon];};
                        case (5) : {format["<t color='#0000FF'><img image='%2' size='1'></img> [Capitão] %1</t>", _name, _icon];};
                        case (6) : {format["<t color='#0000FF'><img image='%2' size='1'></img> [Major] %1</t>", _name, _icon];};
                        case (7) : {format["<t color='#0000FF'><img image='%2' size='1'></img> [B.O.P.E] %1</t>", _name, _icon];};
                    };
                };
                    case ((!isNil {_x getVariable "name"} && playerSide == independent)):
                    {   format["<t color='#FF0000'><img         image='a3\ui_f\data\map\MapControl\hospital_ca.paa' size='1.5'></img></t> %1",_x getVariable ["name","Unknown Player"]]
                    };
                    //Others
                default {
                    //Others with gang
                    if(!isNil {(group _x) getVariable "gang_name"}) then {
                        _ownerID = (group _x) getVariable["gang_owner",""];
                        _groupname = "";
                        if (_ownerID == (getPlayerUID _x)) then {
                            _groupname = format["Leader %1", (group _x) getVariable ["gang_name",""]];
                        } else {
                            _groupname = (group _x) getVariable ["gang_name",""];
                        };
                        _text = format["<t color='#B6B6B6'>%1</t><br/><t size='0.8' color='#B6B6B6'>%2</t>", _name, _groupname];
                    //Normaly Civilians
                    } else {
                        _text = format["<t color='#FFFFFF'>%1</t>", _name];
                    };
                };
            };

            _idc ctrlSetStructuredText parseText _text;
            _idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
            _idc ctrlSetScale scale;
            _idc ctrlSetFade 0;
            _idc ctrlCommit 0;
            _idc ctrlShow true;
        } else {
            _idc ctrlShow false;
        };
    } else {
        _idc ctrlShow false;
    };
} foreach _units;
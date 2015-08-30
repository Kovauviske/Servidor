#include <macro.h>
#define IDD_LIFE_MAIN_DISP 2203
#define IDC_LIFE_BAR_FOOD 2200
#define IDC_LIFE_BAR_WATER 2201
#define IDC_LIFE_BAR_HEALTH 2202
#define IDC_LIFE_BAR_RUNNING 2204
#define IDC_LIFE_FOOD_TEXT 1000
#define IDC_LIFE_WATER_TEXT 1001
#define IDC_LIFE_HEALTH_TEXT 1002
#define IDC_LIFE_RUNNING_TEXT 1003
#define GVAR_UINS uiNamespace getVariable
#define LIFEdisplay (GVAR_UINS ["playerHUD",displayNull])
#define LIFEctrl(ctrl) ((GVAR_UINS ["playerHUD",displayNull]) displayCtrl ctrl)

private["_bounty","_crime"];
_bounty = _data select 3;
_data = call compile format["%1", _data];
_data = lbData[2401,(lbCurSel 2401)];
disableSerialization;
if(isNull LIFEdisplay) then {[] call life_fnc_hudSetup;};
LIFEctrl(IDC_LIFE_BAR_FOOD) progressSetPosition (1 / (100 / life_hunger));
LIFEctrl(IDC_LIFE_BAR_WATER) progressSetPosition (1 / (100 / life_thirst));
LIFEctrl(IDC_LIFE_BAR_HEALTH) progressSetPosition (1 - (damage player));
LIFEctrl(IDC_LIFE_BAR_RUNNING) progressSetPosition (1 - (getFatigue player));

LIFEctrl(IDC_LIFE_FOOD_TEXT) ctrlsetText format["%1", life_hunger];
LIFEctrl(IDC_LIFE_WATER_TEXT) ctrlsetText format["%1", life_thirst];
LIFEctrl(IDC_LIFE_HEALTH_TEXT) ctrlsetText format["%1", round((1 - (damage player)) * 100)];
LIFEctrl(IDC_LIFE_RUNNING_TEXT) ctrlSetText format["%1", round((1 - (getFatigue player)) * 100)];

6 cutRsc ["wm_disp","PLAIN"];
((uiNamespace getVariable "wm_disp") displayCtrl 1) ctrlSetText "F.T.I Altis Life";
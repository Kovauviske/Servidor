#define ST_RIGHT 0x01

class osefStatusBar {
	idd = -1;
	onLoad = "uiNamespace setVariable ['osefStatusBar', _this select 0]";
	onUnload = "uiNamespace setVariable ['osefStatusBar', objNull]";
	onDestroy = "uiNamespace setVariable ['osefStatusBar', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 1000;
			x = safezoneX + safezoneW - 1.5;
			y = safezoneY + safezoneH - 0.06;
			w = 0.8;
			h = 0.04;
			shadow = 0;
			colorBackground[] = { 255, 255, 255, 0.0 };
			font = "PuristaSemibold";
			size = 0.033;
			type = 13;
			style = 1;
			text="SERVIDOR F.T.I ALTIS LIFE BRASIL - CARREGANDO INFORMAÇÕES...";
			class Attributes {
				align="right";
				color = "#FF4500";
			};
		};
	};
};
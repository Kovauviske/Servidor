/*
	Correction d'une faille majeure
	Par _Fuzz
*/
{
	inGameUISetEventHandler [_x,""];
} forEach ["PrevAction","Action","NextAction"];
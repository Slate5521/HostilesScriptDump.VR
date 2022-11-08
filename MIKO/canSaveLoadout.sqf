(_this select 0) addAction
[
	"<t color='#FFFF00'>Save Loadout</t>",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_unitLoadout = getUnitLoadout _caller;
		_caller setVariable ["MIKO_SAVED_LOADOUT", _unitLoadout, true];
		"Loadout Saved!" remoteExec ["hint", _caller];
	},
	nil,
	50,
	true,
	false
];
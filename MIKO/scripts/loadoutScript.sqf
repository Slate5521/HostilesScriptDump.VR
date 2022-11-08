// Server: Called to handle giving a player default loadout.
// Returns: Default loadout
MIKO_loadoutScript = 
{
	// _unitName [String]
	//	* Type of unit ie "Rifleman", "Squad Leader", "Medic"
	params ["_unitName"];
	// _loadout [?Array]
	//	* Loadout to use.
	private ["_loadout"];

	/* ----------------------------------------------------------------
	// EDITABLE PART! */

	switch(_unitName) do
	{
		case "Rifleman":
		{
			_loadout = [["CUP_arifle_M16A1GL","","","FHQ_optic_AC12136",["CUP_20Rnd_556x45_Stanag_Tracer_Red",20],["1Rnd_HE_Grenade_shell",1],""],[],["CUP_hgun_M17_Black","","","",["CUP_21Rnd_9x19_M17_Black",21],[],""],["CUP_U_B_USArmy_ACU_UCP",[["ACE_fieldDressing",18],["ACE_EarPlugs",1],["ACE_epinephrine",5],["ACE_tourniquet",2],["ACE_splint",2],["ACE_morphine",2],["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["CUP_V_B_IOTV_UCP_TL_USArmy",[["CUP_21Rnd_9x19_M17_Black",2,21],["ACE_Chemlight_UltraHiOrange",2,1],["ACE_HandFlare_Red",1,1],["SmokeShellBlue",2,1],["CUP_HandGrenade_M67",1,1],["ACE_M84",1,1],["SmokeShellRed",2,1],["SmokeShell",3,1],["CUP_20Rnd_556x45_Stanag_Tracer_Red",8,20]]],["TFAR_rt1523g_green",[["ACE_salineIV",2],["ACE_salineIV_500",1],["ACE_salineIV_250",2],["ACE_EntrenchingTool",1],["ACE_CableTie",2],["Laserbatteries",1,1],["1Rnd_Smoke_Grenade_shell",5,1],["1Rnd_HE_Grenade_shell",3,1],["CUP_1Rnd_HEDP_M203",3,1]]],"CUP_H_USArmy_HelmetACH_UCP","immersion_cigs_cigar0",["Laserdesignator_03","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_rf7800str_1","ItemCompass","TFAR_microdagr",""]],[];
		};
	};

	/* END EDITABLE PART!
	// ---------------------------------------------------------------- */

	// Return default loadout.
	_loadout
};
// Server: Called to handle giving a player default loadout.
// Returns: Default loadout
MIKO_loadoutScript = 
{
	// _unit
	//	* The unit in question.
	params ["_unit"];
	// _loadout [?Array]
	//	* Loadout to use.
	private ["_loadout"];

	/* ----------------------------------------------------------------
	// EDITABLE PART! */
	
	_loadout = [["vme_pla_qbz95_1","VME_QBZ95_1_Silencer","VME_QBZ95_laser_IR","CUP_optic_Elcan_SpecterDR_RMR_black_PIP",["VME_QBZ95_1_30Rnd_DBP10",30],[],"VME_rail_scopes"],[],["vme_pla_qsw06","","","",["VME_QSW06_20Rnd_DCV05",20],[],""],["PLA_CombatUniform_SW",[["ACE_elasticBandage",16],["ACE_CableTie",2],["ACE_epinephrine",8],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_morphine",4],["ACE_tourniquet",2],["ACE_splint",2]]],["PLA_T15Vest",[["VME_QBZ95_1_30Rnd_DBP87",4,30],["VME_QSW06_20Rnd_DCV05",2,20],["ACE_Chemlight_UltraHiOrange",2,1],["CUP_HandGrenade_RGD5",1,1],["CUP_HandGrenade_RGO",1,1],["SmokeShell",3,1],["SmokeShellRed",1,1],["SmokeShellBlue",1,1]]],["PLAN_FieldPack_Medic",[["ACE_EntrenchingTool",1],["vme_camonet_med_FOR",1],["vme_camonet_FOR",1],["ACE_plasmaIV",2],["ACE_plasmaIV_500",2]]],"VME_Booniehat_WD","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","CUP_NVG_GPNVG_black"]],[];

	switch(roleDescription _unitName) do
	{
		case "Medic":
		{
			_unit setUnitTrait ["medic", true];
		};
		case "Explosives Specialist":
		{
			_unit setUnitTrait ["explosiveSpecialist", true];
		};
		case "Mechanic";
		case "Engineer":
		{
			_unit setUnitTrait ["engineer", true];
		};
	};

	/* END EDITABLE PART!
	// ---------------------------------------------------------------- */

	// Return default loadout.
	_loadout
};
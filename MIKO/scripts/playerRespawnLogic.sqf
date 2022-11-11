// Local: Called on player respawn.
MIKO_L_event_onPlayerRespawn = 
{
	// _unit 	
	//	* Unit/player that has just respawned.
	params ["_unit"];
	
	// If Zeus object, do nothing with the loadout - just set as invincible.
	if(typeOf _unit == "VirtualCurator_F") 
		exitWith
		{
			_unit allowDamage false;
			_unit enableSimulation false;
		};

	_unit remoteExec ["MIKO_S_onPlayerRespawn", 2];
};

// Server: Server-side call for player respawn.
MIKO_S_onPlayerRespawn = 
{
	// _unit [Player]	
	//	* Unit/player that has just respawned.
	params ["_unit"];
	// _savedLoadout [?Array]
	//	* Possibly saved loadout in player's memory.
	// _defaultLoadout [?Array]
	//	* Default loadout.
	private ["_savedLoadout", "_defaultLoadout"];
	
	// Check if there's a saved loadout. Also grab a default loadout while we're at it.
	// Note: I'm not concerned with the performance impact of possibly generating two 
	//		 loadouts every respawn because it's an infrequent operation.
	_savedLoadout   = _unit getVariable "MIKO_SAVED_LOADOUT";
	_defaultLoadout = [_unit] call MIKO_loadoutScript;

	// Check if there's a saved loadout.
	if(isNil "_savedLoadout") then
	{	// There's no saved loadout - use default.
		_unit setUnitLoadout _defaultLoadout;
	}
	else 
	{	// There's a saved loadout - use it.
		_unit setUnitLoadout _savedLoadout;
	};
};
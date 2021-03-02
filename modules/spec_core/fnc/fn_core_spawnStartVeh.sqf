private _spawnPoint = objNull;
private _spawnPoint = KPLIB_zeroPos;
private _vehicle = objNull;

if (!isNil "KPLIB_preset_addVehF") then {
    // Go through the available markers for the little bird spawn. Adapts to the amount of placed markers.
    for [{_i=0}, {!isNil ("SPEC_eden_startVehicle_" + str _i)}, {_i = _i + 1}] do {
        // Get the spawn point grasscutter
        _spawnPoint = missionNamespace getVariable ("SPEC_eden_startVehicle_" + str _i);

        // Current position for the spawn
        _spawnPos = getPosATL _spawnPoint;

        // Spawn the vehicle at the spawn position with a slight height offset.
        private _vehicle = [KPLIB_preset_addVehF, [_spawnPos select 0, _spawnPos select 1, (_spawnPos select 2) + 0.1], getDir _spawnPoint, true] call KPLIB_fnc_common_createVehicle;

        [{!(alive (_this select 0))}, {
            ["SPEC_core_vehicleRespawn", [(_this select 0)]] call CBA_fnc_serverEvent;
        }, [_vehicle]] call CBA_fnc_waitUntilAndExecute;
    };
};

true

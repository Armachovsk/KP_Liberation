params [
    ["_vehicle", objNull, [objNull]]
];

if (!isNil "KPLIB_preset_addVehF" && typeOf _vehicle isEqualTo KPLIB_preset_addVehF) then {
    [{
        deleteVehicle (_this select 0);
        [] call SPEC_fnc_core_spawnStartVeh;
    }, [_vehicle], SPEC_param_startVehicleRespawn] call CBA_fnc_waitAndExecute;
};

true

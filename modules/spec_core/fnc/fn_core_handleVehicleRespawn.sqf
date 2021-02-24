params [
    ["_vehicle", objNull, [objNull]]
];

switch (typeOf _vehicle) do {
    case KPLIB_preset_addVehF: {
        [{
            deleteVehicle (_this select 0);
            [] call SPEC_fnc_core_spawnStartVeh;
        }, [_vehicle], SPEC_param_startVehicleRespawn] call CBA_fnc_waitAndExecute;
    };
};

true

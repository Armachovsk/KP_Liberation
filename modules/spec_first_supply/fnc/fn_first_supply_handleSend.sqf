params ["_pos"];

private _crates = [];
private _crate = objNull;
for "_i" from 1 to 6 do {
    _crate = createVehicle [
        (_crates select (_i % 3)),
        [(_pos select 0), (_pos select 1), 150],
        [],
        80,
        "FLY"
    ];
    [_crate, true] call KPLIB_fnc_common_clearVehicleCargo;
    _crate setVariable ["KPLIB_resources_crateValue", 100, true];
    [_crate, 500] remoteExec ["setMass", _crate];
    [objNull, _crate] call BIS_fnc_curatorObjectEdited;
    if (KPLIB_ace_enabled) then {[_crate, true, [0, 1.5, 0], 0] remoteExec ["ace_dragging_fnc_setCarryable"];};
    _crates pushBack _crate;
};

// Spawn green smoke on the crates short before they hit the ground
[{
    private _smoke = objNull;
    {
        _smoke = "SmokeShellGreen" createVehicle (getPos _x);
        _smoke attachTo [_x];
    } forEach (_this select 0);
}, [_crates], 25] call CBA_fnc_waitAndExecute;

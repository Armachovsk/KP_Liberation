params ["_pos"];

private _cratesTypes = [
    "Ammo",
    "Supply",
    "Fuel",
    "Ammo",
    "Supply",
    "Fuel"
];
private _crates = [];

{
    private _crate = [selectRandom _cratesTypes, [(_pos select 0), (_pos select 1), 300], 100] call KPLIB_fnc_resources_createCrate;
    if (KPLIB_ace_enabled) then {[_crate, true, [0, 1.5, 0], 0] remoteExec ["ace_dragging_fnc_setCarryable"];};
    _crates pushBack _crate;
} forEach _cratesTypes;

// Spawn green smoke on the crates short before they hit the ground
[{
    private _smoke = objNull;
    {
        _smoke = "SmokeShellGreen" createVehicle (getPos _x);
        _smoke attachTo [_x];
    } forEach (_this select 0);
}, [_crates], 5] call CBA_fnc_waitAndExecute;

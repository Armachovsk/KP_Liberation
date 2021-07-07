
/* ----------------------------------------------------------------------------
Function: btc_fnc_ied_drone_create

Description:
    Create a drone in a city under a random area.

Parameters:
    _city - City where the drone is created. [Object]
    _area - Area around the city where the drone is created randomly. [Number]
    _rpos - Create the drone at this position. [Array]

Returns:
    _leader - return the leader of the group. [Object]

Examples:
    (begin example)
        _leader = [allplayers select 0, 100] call btc_fnc_ied_drone_create;
    (end)

Author:
    Vdauphin

---------------------------------------------------------------------------- */

params [
    ["_city", objNull, [objNull]],
    ["_area", 300, [0]],
    ["_rpos", [], [[]]]
];

if (KPLIB_param_debug) then {
    [format ["_name = %1 _area %2", _city getVariable ["name", "name"], _area]] call SPEC_fnc_core_debugLog;
};

if (_rpos isEqualTo []) then {
    _rpos = [position _city, _area] call SPEC_fnc_randomizePos;
};

private _group = createGroup [KPLIB_preset_sideE, true];
_group setVariable ["btc_city", _city];
private _drone = createVehicle ["C_IDAP_UAV_06_antimine_F", _rpos, [], 0, "FLY"];
createVehicleCrew _drone;
[driver _drone] joinSilent _group;
_group setVariable ["btc_ied_drone", true];

[_group, _rpos, _area, 4] call CBA_fnc_taskPatrol;
_drone flyInHeight 10;

[driver _drone, _rpos, _area, []] call SPEC_fnc_ied_droneLoop;

leader _group

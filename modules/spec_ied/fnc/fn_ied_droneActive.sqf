
/* ----------------------------------------------------------------------------
Function: btc_fnc_ied_drone_active

Description:
    Create a trigger to allow drone to fire on player side presence.

Parameters:
    _driver_drone - Driver of the drone. [Object]

Returns:
	_trigger - Trigger to allow drone to fire on player side presence. [Object]

Examples:
    (begin example)
        _trigger = [driver] call btc_fnc_ied_drone_active;
    (end)

Author:
    Vdauphin

---------------------------------------------------------------------------- */

params [
    ["_driver_drone", objNull, [objNull]]
];

[group _driver_drone] call CBA_fnc_clearWaypoints;

private _trigger = createTrigger ["EmptyDetector", getPos _driver_drone];
_trigger setTriggerArea [10, 10, 0, false, -60];
_trigger setTriggerActivation [str KPLIB_preset_sideF, "PRESENT", true];
_trigger setTriggerStatements ["this", "[thisTrigger] call SPEC_fnc_ied_droneFire;", ""];
_trigger setVariable ["btc_ied_drone", _driver_drone];

_trigger attachTo [vehicle _driver_drone, [0, 0, 0]];

if (KPLIB_param_debug) then {
    [format ["_driver_drone = %1 POS %2 START LOOP", _driver_drone, getPos _driver_drone]] call SPEC_fnc_core_debugLog;
};

(group _driver_drone) setBehaviour "CARELESS";
(group _driver_drone) setSpeedMode "LIMITED";

_trigger

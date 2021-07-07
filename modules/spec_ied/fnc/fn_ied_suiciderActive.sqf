
/* ----------------------------------------------------------------------------
Function: btc_fnc_ied_suicider_active

Description:
    Activate the suicider by adding explosive charge around his pelvis and force suicider to move in the direction of soldier.

Parameters:
    _suicider - Suicider created. [Object]

Returns:

Examples:
    (begin example)
        [_suicider] call btc_fnc_ied_suicider_active;
    (end)

Author:
    Giallustio

---------------------------------------------------------------------------- */

params [
    ["_suicider", objNull, [objNull]]
];

private _group = createGroup [KPLIB_preset_sideE, true];
[_suicider] joinSilent _group;
_group setVariable ["suicider", true];

[group _suicider] call CBA_fnc_clearWaypoints;

private _trigger = createTrigger ["EmptyDetector", getPos _suicider];
_trigger setTriggerArea [5, 5, 0, false];
_trigger setTriggerActivation [str KPLIB_preset_sideF, "PRESENT", false];
_trigger setTriggerStatements ["this", "thisTrigger call SPEC_fnc_ied_allahuAkbar;", ""];
_trigger setVariable ["suicider", _suicider];

_trigger attachTo [_suicider, [0, 0, 0]];

private _array = getPos _suicider nearEntities [SPEC_preset_playerF, 30];

if (_array isEqualTo []) exitWith {};

private _expl1 = "DemoCharge_Remote_Ammo" createVehicle (position _suicider);
_expl1 attachTo [_suicider, [-0.1, 0.1, 0.15], "Pelvis"];
private _expl2 = "DemoCharge_Remote_Ammo" createVehicle (position _suicider);
_expl2 attachTo [_suicider, [0, 0.15, 0.15], "Pelvis"];
private _expl3 = "DemoCharge_Remote_Ammo" createVehicle (position _suicider);
_expl3 attachTo [_suicider, [0.1, 0.1, 0.15], "Pelvis"];

[_expl1, _expl2, _expl3] remoteExecCall ["SPEC_fnc_ied_belt", 0];

_suicider addEventHandler ["Killed", {
    params ["_unit", "_killer"];

    if !(isPlayer _killer) then {
        (attachedObjects _unit) call CBA_fnc_deleteEntity;
    };
}];

(group _suicider) setBehaviour "CARELESS";
(group _suicider) setSpeedMode "FULL";

if (KPLIB_param_debug) then {
    [format ["_suicider = %1 POS %2 START LOOP", _suicider, getPos _suicider]] call SPEC_fnc_core_debugLog;
};

[_suicider, _trigger] call SPEC_fnc_ied_suiciderActiveLoop;

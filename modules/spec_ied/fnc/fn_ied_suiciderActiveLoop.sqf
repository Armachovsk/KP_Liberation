
/* ----------------------------------------------------------------------------
Function: btc_fnc_ied_suicider_activeLoop

Description:
    Detect and force the suicider to run in the direction of the soldier nearby.

Parameters:
    _suicider - Suicider. [Object]
    _trigger - Trigger triggring the suicider explosion. [Object]

Returns:

Examples:
    (begin example)
        [_suicider, _trigger] call btc_fnc_ied_suicider_activeLoop;
    (end)

Author:
    Giallustio

---------------------------------------------------------------------------- */

[{
    params ["_suicider", "_trigger"];

    if (alive _suicider) then {
        private _array = _suicider nearEntities [SPEC_preset_playerF, 30];
        if !(_array isEqualTo []) then {
            _suicider doMove (position (_array select 0));
        };
        _this call SPEC_fnc_ied_suiciderActiveLoop;
    } else {
        deleteVehicle _trigger;
        group _suicider setVariable ["suicider", false];

        if (KPLIB_param_debug) then {
            [format ["_suicider = %1 POS %2 END LOOP", _suicider, getPos _suicider]] call SPEC_fnc_core_debugLog;
        };
    };
}, _this, 0.5] call CBA_fnc_waitAndExecute;

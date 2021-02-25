params ["_unit", "_killer"];

if (!isServer) then {
    // Get Killer and send it to server, when ACE enabled, via lastDamageSource
    if (KPLIB_ace_enabled && local _unit) then {
        SPEC_resistance_aceKiller = _unit getVariable ["ace_medical_lastDamageSource", _killer];
        publicVariable "SPEC_resistance_aceKiller";
    };
};

if (isServer) then {
    if (KPLIB_param_debug) then {
        [format ["Kill Manager executed - _unit: %1 (%2) - _killer: %3 (%4)", typeOf _unit, _unit, typeOf _killer, _killer], "RESISTANCE"] call KPLIB_fnc_common_log;
    };

    if (KP_liberation_ace) then {
        if (local _unit) then {
            _killer = _unit getVariable ["ace_medical_lastDamageSource", _killer];
            if (KPLIB_param_debug) then {["_unit is local to server", "RESISTANCE"] call KPLIB_fnc_common_log;};
        } else {
            if (KPLIB_param_debug) then {["_unit is not local to server", "RESISTANCE"] call KPLIB_fnc_common_log;};
            if (isNil "SPEC_resistance_aceKiller") then {SPEC_resistance_aceKiller = objNull;};
            [{!(isNull SPEC_resistance_aceKiller)}, {
                if (KPLIB_param_debug) then {["SPEC_resistance_aceKiller received on server", "RESISTANCE"] call KPLIB_fnc_common_log;};
                _killer = SPEC_resistance_aceKiller;
                SPEC_resistance_aceKiller = objNull;
                publicVariable "SPEC_resistance_aceKiller";
            }, [], 0.5] call CBA_fnc_waitUntilAndExecute;
        };
    };

    // Check for Man or Vehicle
    if (_unit isKindOf "Man") then {

        // Resistance casualty
        if (side (group _unit) == KPLIB_preset_sideR) then {
            // KP_liberation_guerilla_strength = KP_liberation_guerilla_strength - 1;
            ["SPEC_resistance_unitKilled", [_unit, _killer]] call CBA_fnc_globalEvent;

            // Resistance is friendly to BLUFOR
            if ((KPLIB_preset_sideF getFriend KPLIB_preset_sideR) >= 0.6) then {

                // Killed by BLUFOR
                if (side _killer == KPLIB_preset_sideF) then {
                    // if (KP_liberation_asymmetric_debug > 0) then {[format ["Guerilla unit killed by: %1", name _killer], "ASYMMETRIC"] call KPLIB_fnc_log;};
                    // [3, [(name _unit)]] remoteExec ["KPLIB_fnc_crGlobalMsg"];
                    // stats_resistance_teamkills = stats_resistance_teamkills + 1;
                    // [KP_liberation_cr_resistance_penalty, true] spawn F_cr_changeCR;
                    ["SPEC_resistance_friendlyUnitKilled", [_unit, _killer]] call CBA_fnc_globalEvent;
                };
            };
        };

        // Civilian casualty
        if (side (group _unit) == KPLIB_preset_sideC) then {
            // Killed by BLUFOR
            if (side _killer == KPLIB_preset_sideF) then {
                // if (KP_liberation_civrep_debug > 0) then {[format ["Civilian killed by: %1", name _killer], "CIVREP"] call KPLIB_fnc_log;};
                // [2, [(name _unit)]] remoteExec ["KPLIB_fnc_crGlobalMsg"];
                // [KP_liberation_cr_kill_penalty, true] spawn F_cr_changeCR;
                ["SPEC_resistance_civUnitKilled", [_unit, _killer]] call CBA_fnc_globalEvent;
            };
        };
    } else {
        // Civilian vehicle casualty
        if ([_unit] call SPEC_fnc_resistance_isCivVeh) then {
            ["SPEC_resistance_civVehicleKilled", [_unit, _killer]] call CBA_fnc_globalEvent;
        }
    };
};

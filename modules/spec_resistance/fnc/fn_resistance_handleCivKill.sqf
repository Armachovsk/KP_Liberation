params ["_unit"];

if (KPLIB_param_debug) then {[format ["Civilian killed by: %1", name _killer], "CIVREP"] call KPLIB_fnc_log;};
[2, [(name _unit)]] remoteExec ["SPEC_fnc_resistance_civRepGlobalMsg"];
[SPEC_param_civRepKillPenalty, true] call SPEC_fnc_resistance_changeCR;

true

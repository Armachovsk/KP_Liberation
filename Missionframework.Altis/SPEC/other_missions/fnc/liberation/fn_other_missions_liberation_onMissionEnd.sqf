params ["_missionName", "_intel"];

if (!isServer) exitWith {false};

resources_intel = resources_intel + _intel;

KPLIB_secondary_in_progress = -1;
publicVariable "KPLIB_secondary_in_progress";

[{ [] spawn KPLIB_fnc_doSave; }, [], 1] call CBA_fnc_waitAndExecute;

true

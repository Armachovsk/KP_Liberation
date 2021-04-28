if (!isServer) exitWith {false};

params [
    ["_mission_index", -1, [0]]
];

if (_mission_index < 0) exitWith {false};

if (isNil "KPLIB_secondary_starting") then { KPLIB_secondary_starting = false;};
if (KPLIB_secondary_starting) exitWith {["Multiple calls to start secondary mission : shouldn't be possible, isn't allowed", "ERROR"] call KPLIB_fnc_log;};
if (isNil "used_positions") then {used_positions = [];};

KPLIB_secondary_starting = true; publicVariable "KPLIB_secondary_starting";

private _missionCost = KPLIB_secondary_missions_costs param [_mission_index, 5];
resources_intel = resources_intel - _missionCost;

["SPEC_liberation_missionEnd", {
    params ["_missionName", "_state", "_rewardsOrPenaltyHashOrErr"];
    if (_state isEqualTo "ERROR") then {
        resources_intel = resources_intel + _thisArgs;
    };
}, _missionCost] call CBA_fnc_addEventHandlerArgs;

if (_mission_index == 0) then {[] spawn fob_hunting;};
if (_mission_index == 1) then {[] spawn convoy_hijack;};
if (_mission_index == 2) then {[] spawn search_and_rescue;};

// SPEC
if (!isNil "SPEC_fnc_other_missions_liberation_createMissions") then {
    [_mission_index] call SPEC_fnc_other_missions_liberation_createMissions;
};

KPLIB_secondary_starting = false; publicVariable "KPLIB_secondary_starting";

true

params ["_missionName", "_state", "_rewardsOrPenaltyHash"];

if (!isServer) exitWith {false};

if (_state isEqualTo "SUCCEEDED") then {
    private _intel = _rewardsOrPenaltyHash getOrDefault ["intel", 0];
    resources_intel = resources_intel + _intel;
};
if (_state isEqualTo "FAILED") then {
    private _intel = _rewardsOrPenaltyHash getOrDefault ["intel", 0];
    if (resources_intel <= 0) then {
        resources_intel = 0;
    };
    resources_intel = resources_intel - _intel;
};

KPLIB_secondary_in_progress = -1;
publicVariable "KPLIB_secondary_in_progress";

[{ [] spawn KPLIB_fnc_doSave; }, [], 1] call CBA_fnc_waitAndExecute;

true

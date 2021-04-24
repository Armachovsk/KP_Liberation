if (!isServer) exitWith {false};

params [
    ["_mission_index", -1, [0]]
];

if (_mission_index < 0) exitWith {false};

if (_mission_index == 3) then {
    private _pos_misison = call SPEC_fnc_other_missions_findPosFromMision;
    private _enemy = KPLIB_o_armyVehicles select [(count KPLIB_o_armyVehicles) - 1, 1] # 0;
    [_pos_misison,_enemy,KPLIB_side_enemy,1500] spawn SPEC_fnc_other_missions_destroyTank;
};

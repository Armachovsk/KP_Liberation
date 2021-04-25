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

if (_mission_index == 4) then {
    private _pos_misison = call SPEC_fnc_other_missions_findPosFromMision;
    private _enemy = selectRandom KPLIB_o_helicopters;
    [_pos_misison,_enemy,KPLIB_side_enemy,1500] spawn SPEC_fnc_other_missions_destroyHeli;
};

if (_mission_index == 5) then {
    private _pos_misison = call SPEC_fnc_other_missions_findPosFromMision;

    private _friend = KPLIB_b_air_classes select { _x isKindOf "Helicopter" };
    if (isNil "_friend") then {
        _friend = "RHS_AH64D";
    };

    // TODO: what if we don't have fobs?
    private _rescuePosFob = [] call KPLIB_fnc_getNearestFob;
    [
        _pos_misison,
        _friend,
        _pos_misison,
        KPLIB_side_enemy,
        KPLIB_b_heliPilotUnit,
        _rescuePosFob
    ] spawn SPEC_fnc_other_missions_rescuePilots;
};

if (_mission_index == 6) then {
    private _pos_misison = selectRandom KPLIB_sectors_spawn;
    private _enemyHeli = selectRandom KPLIB_o_helicopters;
    private _transport = selectRandom KPLIB_o_troopTransports;

    private _UAV = KPLIB_b_air_classes select { _x isKindOf "UAV" };
    if (isNil "_UAV") then {
        _UAV = "B_UAV_02_dynamicLoadout_F";
    };

    [
        _pos_misison,
        _UAV,
        _transport,
        _enemyHeli,
        KPLIB_side_enemy,
        [
            KPLIB_o_atSpecialist,
            KPLIB_o_atSpecialist,
            KPLIB_o_atSpecialist,
            KPLIB_o_atSpecialist,
            KPLIB_o_aaSpecialist,
            KPLIB_o_heavyGunner,
            KPLIB_o_machinegunner,
            KPLIB_o_medic,
            KPLIB_o_marksman,
            KPLIB_o_sentry,
            KPLIB_o_grenadier,
            KPLIB_o_riflemanLAT,
            KPLIB_o_rifleman,
            KPLIB_o_aaSpecialist,
            KPLIB_o_aaSpecialist,
            KPLIB_o_aaSpecialist
        ]
    ] spawn SPEC_fnc_other_missions_rescue_intel_fromUAV;
};

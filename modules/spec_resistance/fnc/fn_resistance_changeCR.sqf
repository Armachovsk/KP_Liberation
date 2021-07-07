params ["_amount", ["_negative", false]];

if (!isServer) exitWith {};

if (KPLIB_param_debug) then {
    [format ["changeCR called - Parameters [%1, %2]", _amount, _negative], "RESISTANCE"] call KPLIB_fnc_common_log;
};

if (!isNil "_amount") then {
    if (_negative) then {
        SPEC_civRep = SPEC_civRep - _amount;
    } else {
        SPEC_civRep = SPEC_civRep + _amount;
    };

    SPEC_civRep = -100 max (SPEC_civRep min 100);
};

// Set correct resistance standing
private _resistanceEnemy = [0, 1] select (SPEC_civRep < 25);
private _resistanceFriendly = [0, 1] select (SPEC_civRep >= -25);

KPLIB_preset_sideR setFriend [KPLIB_preset_sideE, _resistanceEnemy];
KPLIB_preset_sideE setFriend [KPLIB_preset_sideR, _resistanceEnemy];
KPLIB_preset_sideR setFriend [KPLIB_preset_sideF, _resistanceFriendly];
KPLIB_preset_sideF setFriend [KPLIB_preset_sideR, _resistanceFriendly];

if (KPLIB_param_debug) then {
    [format ["changeCR finished - New value: %1", SPEC_civRep], "RESISTANCE"] call KPLIB_fnc_common_log;
};
if (KPLIB_param_debug) then {
    [
        format [
            "%1 getFriend %2: %3 - %1 getFriend %4: %5",
            KPLIB_preset_sideR,
            KPLIB_preset_sideE,
            (KPLIB_preset_sideR getFriend KPLIB_preset_sideE),
            KPLIB_preset_sideF,
            (KPLIB_preset_sideR getFriend KPLIB_preset_sideF)
        ],
        "RESISTANCE"
    ] call KPLIB_fnc_common_log;
};

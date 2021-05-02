params ["_classname"];

private _callsign = format["%1 0-1", selectRandom KPLIB_militaryAlphabet];

if (_classname isKindOf "Heli_Attack_01_base_F") exitWith {
    [
        _classname,
        [1],
        _callsign,
        900,
        300,
        {},
        KPLIB_side_player,
        [],
        {true},
        {true}
    ] call SSS_support_fnc_addCASGunship;

    true
};

false

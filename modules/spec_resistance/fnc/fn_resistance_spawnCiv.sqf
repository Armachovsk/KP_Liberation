params [
    ["_sector", "", [""]]
];

if (_sector isEqualTo "") exitWith {["Empty string given"] call BIS_fnc_error; []};

private _civs = [];
private _sPos = markerPos _sector;

// Amount and spread depending if capital or city/factory
private _amount = round ((3 + (floor (random 7))) * SPEC_param_civilianActivity);
private _spread = 1;
if (_sector in KPLIB_sectors_metropolis) then {
    _amount = _amount + 10;
    _spread = 2.5;
};

// Spawn civilians
private _grp = grpNull;
for "_i" from 1 to _amount do {
    _grp = createGroup [KPLIB_preset_sideC, true];

    _civs pushBack (
        [
            _grp,
            selectRandom KPLIB_preset_unitsPlC,
            [(((_sPos select 0) + (75 * _spread)) - (random (150 * _spread))), (((_sPos select 1) + (75 * _spread)) - (random (150 * _spread))), 0]
        ] call KPLIB_fnc_common_createUnit
    );

    [_grp] call SPEC_fnc_resistance_addCivWaypoints;
};

_civs

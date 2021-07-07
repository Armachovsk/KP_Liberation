params [
    ["_pos", [0, 0, 0], []],
    ["_amount", 0, []]
];

// Get tier and civilian reputation depending values
private _tier = [] call SPEC_fnc_resistance_getTier;
private _cr_multi = [] call SPEC_fnc_resistance_crGetMulti;
if (_amount == 0) then {_amount = (6 + (round (random _cr_multi)) + (round (random _tier)));};

private _grp = createGroup [KPLIB_preset_sideR, true];
private _unit = objNull;

for "_i" from 1 to _amount do {
    // Create unit
    _unit = [_grp, selectRandom KPLIB_preset_unitsPlR, _pos] call KPLIB_fnc_common_createUnit;
};

_grp

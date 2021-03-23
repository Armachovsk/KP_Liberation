
/* ----------------------------------------------------------------------------
Function: btc_fnc_ied_initArea

Description:
    Initialize positions of IEDS.

Parameters:
    _city - City to initialise. [Object]
    _area - Area to create IED. [Number]
    _n - Number of IED, real and fake. [Number]

Returns:

Examples:
    (begin example)
        _result = [] call btc_fnc_ied_initArea;
    (end)

Author:
    Giallustio

---------------------------------------------------------------------------- */

params [
    ["_city", objNull, [objNull]],
    ["_area", 100, [0]],
    ["_n", 1, [0]]
];

private _pos = getPos _city;
private _array = _city getVariable ["ieds", []];

{
    for "_i" from 1 to _n do {
        private _sel_pos = [_pos, _area] call SPEC_fnc_common_randomizePos;
        private _dir = random 360;

        private _roads = _sel_pos nearRoads 50;
        if (_roads isEqualTo []) then {
            _sel_pos = [_sel_pos, 0, 100, 1, false] call SPEC_fnc_common_findSafePos;
        } else {
            private _arr = (selectRandom _roads) call SPEC_fnc_ied_randomRoadPos;
            _sel_pos = _arr select 0;
            _dir = _arr select 1;
        };

        _array pushBack [_sel_pos, selectRandom SPEC_preset_modelIEDs, _dir, _x];

        if (KPLIB_param_debug) then {
            private _marker = createMarker [format ["btc_ied_%1", _sel_pos], _sel_pos];
            _marker setMarkerType "mil_warning";
            _marker setMarkerColor (["ColorBlue", "ColorRed"] select _x);
            _marker setMarkerText (["IED (fake)", "IED"] select _x);
            _marker setMarkerSize [0.8, 0.8];
        };
        if (KPLIB_param_debug) then {
            [format ["_this = %1  POS %2 N %3(%4)", _this, _sel_pos, _i, _n]] call SPEC_fnc_core_debugLog;
        };
    };
} forEach [true, false];

_city setVariable ["ieds", _array];

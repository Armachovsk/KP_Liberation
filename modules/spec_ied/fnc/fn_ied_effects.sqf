
/* ----------------------------------------------------------------------------
Function: btc_fnc_ied_effects

Description:
    Create effects on player (smoke, rock, shock wave ...).

Parameters:
    _pos - Position of the IED. [Array]
    _caller - Player. [Object]

Returns:

Examples:
    (begin example)
        _result = [] call btc_fnc_ied_effects;
    (end)

Author:
    1kuemmel1

---------------------------------------------------------------------------- */

params [
    ["_pos", [0, 0, 0], [[]]],
    ["_caller", player, [objNull]]
];

[_pos, _caller] spawn SPEC_fnc_ied_effectBlurEffect;
[_pos] spawn SPEC_fnc_ied_effectSmoke;
[_pos] spawn SPEC_fnc_ied_effectRocks;
[_pos] spawn SPEC_fnc_ied_effectShockWave;

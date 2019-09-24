/*
    KPLIB_fnc_captive_setSurrender

    File: fn_captive_setSurrender.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2019-09-11
    Last Update: 2019-09-24
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html
    Public: No

    Description:
        Given unit surrenders.

    Parameter(s):
        _unit - Unit to set in surrender [OBJECT, defaults to objNull]

    Returns:
        Unit surrendered [BOOL]
*/

params [
    ["_unit", objNull, [objNull]]
];

// Exit on missing object
if (isNull _unit) exitWith {
    false
};

if !(vehicle _unit isEqualTo _unit) then {
    moveOut _unit;
};

// Set variable on unit
_unit setVariable ["KPLIB_surrender", true, true];
_unit setVariable ["KPLIB_captured", true, true];

// Remove some equipment of the unit
removeAllWeapons _unit;
removeHeadgear _unit;
removeBackpack _unit;
_unit setUnitPos "UP";
if (KPLIB_ace_enabled) then {
    [_unit, true] call ACE_captives_fnc_setSurrendered;
} else {
    _unit disableAI "ANIM";
    _unit disableAI "MOVE";
    _unit playMove "AmovPercMstpSnonWnonDnon_AmovPercMstpSsurWnonDnon";
    _unit setCaptive true;
    _unit setBehaviour "CARELESS";

    // Apply the actions on the unit
    [_unit] call KPLIB_fnc_captive_addCaptiveActions;
};

// Emit global event
["KPLIB_captive_surrendered", [_unit]] call CBA_fnc_globalEvent;

true

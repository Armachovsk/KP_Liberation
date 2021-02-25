/*
    KPLIB_fnc_example_settings

    File: fn_example_settings.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2019-02-02
    Last Update: 2019-04-23
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html
    Public: No

    Description:
        CBA Settings initialization for this module

    Parameter(s):
        NONE

    Returns:
        Function reached the end [BOOL]
*/

[
    "SPEC_param_resistance_tier2",
    "SLIDER",
    [localize "STR_SPEC_SETTINGS_RESISTANCE_TIER2", localize "STR_SPEC_SETTINGS_RESISTANCE_TIER2_TT"],
    localize "STR_KPLIB_SETTINGS_RESISTANCE",
    [0, 50, 30, 0],
    1,
    {}
] call CBA_Settings_fnc_init;

[
    "SPEC_param_resistance_tier3",
    "SLIDER",
    [localize "STR_SPEC_SETTINGS_RESISTANCE_TIER3", localize "STR_SPEC_SETTINGS_RESISTANCE_TIER3_TT"],
    localize "STR_KPLIB_SETTINGS_RESISTANCE",
    [51, 100, 70, 0],
    1,
    {}
] call CBA_Settings_fnc_init;

[
    "SPEC_param_civRepKillPenalty",
    "SLIDER",
    [localize "STR_SPEC_SETTINGS_RESISTANCE_CIVPENALTY", localize "STR_SPEC_SETTINGS_RESISTANCE_CIVPENALTY_TT"],
    localize "STR_KPLIB_SETTINGS_RESISTANCE",
    [0, 10, 3, 0],
    1,
    {}
] call CBA_Settings_fnc_init;

true

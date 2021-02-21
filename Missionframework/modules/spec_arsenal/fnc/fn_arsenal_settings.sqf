/*
    SPEC_fnc_arsenal_settings

    File: fn_arsenal_settings.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2018-11-14
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

/*
    ----- ARSENAL SETTINGS -----
*/

// KPLIB_param_presetArsenal
// Selection between the arsenal presets, blacklist method or unrestricted arsenal access.
// Default: Blacklist Method
[
    "KPLIB_param_presetArsenal",
    "LIST",
    [localize "STR_KPLIB_SETTINGS_ARSENAL_ARSENAL", localize "STR_KPLIB_SETTINGS_ARSENAL_ARSENAL_TT"],
    localize "STR_KPLIB_SETTINGS_ARSENAL",
    [
        [
            0,
            1,
            2,
            3
        ],
        [
            localize "STR_KPLIB_SETTINGS_ARSENAL_ARSENAL_0",
            localize "STR_KPLIB_SETTINGS_ARSENAL_ARSENAL_1",
            localize "STR_KPLIB_SETTINGS_ARSENAL_ARSENAL_2",
            localize "STR_SPEC_SETTINGS_ARSENAL_ARSENAL_3"
        ],
        0
    ],
    1,
    {if (isServer) then {
        if (KPLIB_param_presetArsenal == 3) then {
            [
                {!isNil "SPEC_arsenal_blacklisted"},
                {
                    // Load arsenal
                    [] call SPEC_fnc_arsenal_fillArsenal;
                },
                []
            ] call CBA_fnc_waitUntilAndExecute;
        } else {
            [] call SPEC_fnc_arsenal_fillArsenal;
        };
    };}
] call CBA_Settings_fnc_init;

// KPLIB_param_arsenalType
// Defines the used arsenal type.
// Default: BI Arsenal
[
    "KPLIB_param_arsenalType",
    "LIST",
    [localize "STR_KPLIB_SETTINGS_ARSENAL_TYPE", localize "STR_KPLIB_SETTINGS_ARSENAL_TYPE_TT"],
    localize "STR_KPLIB_SETTINGS_ARSENAL",
    [
        [
            0,
            1
        ],
        [
            localize "STR_KPLIB_SETTINGS_ARSENAL_TYPE_0",
            localize "STR_KPLIB_SETTINGS_ARSENAL_TYPE_1"
        ],
        0
    ],
    1,
    {}
] call CBA_Settings_fnc_init;

// SPEC_param_arsenalPresetYaml
// Defines the used arsenal yaml preset.
// Works only with `KPLIB_param_presetArsenal = 3`
// Default: Blufor
private _values = [];
private _desc = [];

{
    _values pushBack _forEachIndex;
    _desc pushBack _x;
} forEach SPEC_arsenal_yamlPresetArr;

[
    "SPEC_param_arsenalPresetYaml",
    "LIST",
    [localize "STR_SPEC_SETTINGS_ARSENAL_PRESET_YML", localize "STR_SPEC_SETTINGS_ARSENAL_PRESET_YML_TT"],
    localize "STR_KPLIB_SETTINGS_ARSENAL",
    [
        _values,
        _desc,
        0
    ],
    1,
    {}
] call CBA_Settings_fnc_init;
// KPLIB_param_copyDistance
// Defines the range for the loadout copy function.
// Default: 50
[
    "KPLIB_param_copyDistance",
    "SLIDER",
    [localize "STR_KPLIB_SETTINGS_ARSENAL_COPYDISTANCE", localize "STR_KPLIB_SETTINGS_ARSENAL_COPYDISTANCE_TT"],
    localize "STR_KPLIB_SETTINGS_ARSENAL",
    [1, 10000, 50, 0],
    1,
    {}
] call CBA_Settings_fnc_init;

true

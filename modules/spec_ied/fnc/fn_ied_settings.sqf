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

/*
    ----- EXAMPLE SETTINGS -----
*/

[
    "SPEC_param_iedPlacement",
    "LIST",
    [localize "STR_SPEC_PARAMS_IED_PLACEMENT", localize "STR_SPEC_PARAMS_IED_PLACEMENT_TT"],
    localize "STR_SPEC_SETTINGS_RESISTANCE",
    [
        [
            2,
            -1,
            3
        ],
        [
            localize "STR_SPEC_PARAMS_IED_PLACEMENT_ROADSIDE",
            localize "STR_SPEC_PARAMS_IED_PLACEMENT_MIDDLE",
            localize "STR_3DEN_ATTRIBUTES_OBJECTTEXTURE_RANDOM_TEXT"
        ],
        2
    ],
    1,
    {}
] call CBA_Settings_fnc_init;

true

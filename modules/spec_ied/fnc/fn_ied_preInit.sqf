/*
    SPEC_fnc_ied_preInit

    File: fn_example_preInit.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2019-02-02
    Last Update: 2019-04-23
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html
    Public: No

    Description:
        The preInit function defines global variables, adds event handlers and set some vital settings which are used in this module.

    Parameter(s):
        NONE

    Returns:
        Module preInit finished [BOOL]
*/

if (isServer) then {["Module initializing...", "PRE] [EXAMPLE", true] call KPLIB_fnc_common_log;};

/*
    ----- Module Globals -----
*/


/*
    ----- Module Initialization -----
*/

// Process CBA Settings
[] call SPEC_fnc_ied_settings;

// Server section (dedicated and player hosted)
if (isServer) then {
    // Register load event handler
    ["KPLIB_doLoad", {[] call SPEC_fnc_ied_loadData;}] call CBA_fnc_addEventHandler;

    // Register save event handler
    ["KPLIB_doSave", {[] call SPEC_fnc_ied_saveData;}] call CBA_fnc_addEventHandler;
};

// HC section
if (!hasInterface && !isDedicated) then {

};

// Player section
if (hasInterface) then {

};

if (isServer) then {["Module initialized", "PRE] [EXAMPLE", true] call KPLIB_fnc_common_log;};

true

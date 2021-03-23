/*
    SPEC_fnc_resistance_preInit

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
[] call SPEC_fnc_resistance_settings;

// Server section (dedicated and player hosted)
if (isServer) then {
    // Register load event handler
    ["KPLIB_doLoad", {[] call SPEC_fnc_resistance_loadData;}] call CBA_fnc_addEventHandler;

    // Register save event handler
    ["KPLIB_doSave", {[] call SPEC_fnc_resistance_saveData;}] call CBA_fnc_addEventHandler;

    ["KPLIB_unit_created", {
        private _unit = _this select 0;
        if ((side _unit isEqualTo KPLIB_preset_sideR) || (side _unit isEqualTo KPLIB_preset_sideC)) then {
            _unit addMPEventHandler ["MPKilled", {_this call SPEC_fnc_resistance_handleKilled;}];
        };
    }] call CBA_fnc_addEventHandler;

    ["SPEC_resistance_civUnitKilled", {[_this select 0] call SPEC_fnc_resistance_handleCivKill;}] call CBA_fnc_addEventHandler;
    ["SPEC_resistance_civVehicleKilled", {[_this select 0] call SPEC_fnc_resistance_handleCivKill;}] call CBA_fnc_addEventHandler;
    ["SPEC_resistance_friendlyUnitKilled", {[_this select 0] call SPEC_fnc_resistance_handleCivKill;}] call CBA_fnc_addEventHandler;
    ["SPEC_resistance_unitKilled", {[_this select 0] call SPEC_fnc_resistance_handleResistanceKill;}] call CBA_fnc_addEventHandler;

    ["KPLIB_sector_activated", {[_this select 0] call SPEC_fnc_resistance_handleSector;}] call CBA_fnc_addEventHandler;

    ["SPEC_resistance_spawnGuerilla", {
        if (typeName (_this select 0) isEqualTo "STRING") exitWith {
            [markerPos (_this select 0)] call SPEC_fnc_resistance_handleGuerilla;
        };
        if (typeName (_this select 0) isEqualTo "ARRAY") exitWith {
            [_this select 0] call SPEC_fnc_resistance_handleGuerilla;
        };
    }] call CBA_fnc_addEventHandler;
    ["SPEC_resistance_spawnCiv", {[_this select 0] call SPEC_fnc_resistance_handleCiv;}] call CBA_fnc_addEventHandler;
    ["SPEC_resistance_spawnIED", {[_this select 0] call SPEC_fnc_resistance_handleIED;}] call CBA_fnc_addEventHandler;
};

// HC section
if (!hasInterface && !isDedicated) then {

};

// Player section
if (hasInterface) then {

};

if (isServer) then {["Module initialized", "PRE] [EXAMPLE", true] call KPLIB_fnc_common_log;};

true

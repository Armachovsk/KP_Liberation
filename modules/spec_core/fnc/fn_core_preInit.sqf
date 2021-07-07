/*
    KPLIB_fnc_core_preInit

    File: fn_core_preInit.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2018-10-18
    Last Update: 2019-04-22
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html
    Public: No

    Description:
        The preInit function defines global variables, adds event handlers and set some vital settings which are used in this module.

    Parameter(s):
        NONE

    Returns:
        Module preInit finished [BOOL]
*/

if (isServer) then {["Module initializing...", "PRE] [CORE", true] call KPLIB_fnc_common_log;};

[] call SPEC_fnc_core_settings;

SPEC_preset_playerF = ["SoldierWB", "SoldierEB", "SoldierGB"] select ([west, east, independent] find KPLIB_preset_sideF);

if (isServer) then {
    ["KPLIB_vehicle_spawned", {[_this select 0] call SPEC_fnc_core_handleVehicleSpawn}] call CBA_fnc_addEventHandler;

    if(KPLIB_param_clearVehicleCargo) then {
        ["KPLIB_vehicle_spawned", {[_this select 0] call KPLIB_fnc_common_clearVehicleCargo}] call CBA_fnc_addEventHandler;
    };

    ["SPEC_core_vehicleRespawn", {[_this select 0] call SPEC_fnc_core_handleVehicleRespawn}] call CBA_fnc_addEventHandler;

    ["SPEC_core_cbpsChanged", {[_this select 0, _this select 1] call SPEC_fnc_core_handleCBPSEvent}] call CBA_fnc_addEventHandler;
};

if (isServer) then {["Module initialized", "PRE] [CORE", true] call KPLIB_fnc_common_log;};

true

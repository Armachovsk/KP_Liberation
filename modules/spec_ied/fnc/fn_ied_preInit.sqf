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

SPEC_preset_barrel = ["Land_GarbageBarrel_01_F", "Land_BarrelSand_grey_F", "MetalBarrel_burning_F", "Land_BarrelWater_F", "Land_MetalBarrel_F", "Land_MetalBarrel_empty_F"];
SPEC_preset_pallet = ["Land_Pallets_stack_F", "Land_Pallets_F", "Land_Pallet_F"];

private _cfgVehicles = configFile >> "CfgVehicles";
private _allClassVehicles = ("true" configClasses _cfgVehicles) apply {configName _x};
private _allClassSorted = _allClassVehicles select {getNumber (_cfgVehicles >> _x >> "scope") isEqualTo 2};
private _ieds = ["Land_GarbageContainer_closed_F", "Land_GarbageContainer_open_F", "Land_Portable_generator_F", "Land_WoodenBox_F", "Land_BarrelTrash_grey_F", "Land_Sacks_heap_F", "Land_Wreck_Skodovka_F", "Land_WheelieBin_01_F", "Land_GarbageBin_03_F"] + SPEC_preset_pallet + SPEC_preset_barrel + (_allClassSorted select {
    _x isKindOf "GasTank_base_F" ||
    {_x isKindOf "Garbage_base_F"} ||
    (_x isKindOf "Constructions_base_F" &&
    {
        "bricks" in toLower _x
    }) ||
    (_x isKindOf "Wreck_base_F" &&
    {
        "car" in toLower _x ||
        "offroad" in toLower _x
    })
});

#define _p_ied_spot 2

SPEC_ied_list = [];
SPEC_preset_typeIEDs = _ieds - ["Land_Garbage_line_F","Land_Garbage_square3_F","Land_Garbage_square5_F"];
SPEC_preset_modelIEDs = SPEC_preset_typeIEDs apply {(toLower getText(_cfgVehicles >> _x >> "model")) select [1]};
SPEC_preset_iedsACE = ["IEDLandBig_F", "IEDLandSmall_F"];
SPEC_ied_offset = [0, -0.03, -0.07] select _p_ied_spot;

if (isServer) then {["Module initialized", "PRE] [EXAMPLE", true] call KPLIB_fnc_common_log;};

true

#include "../script_component.hpp"
/*
    KP Liberation Vanilla Civilian Preset

    File: vanilla.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2018-12-07
    Last Update: 2019-04-15
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        Vanilla civilian preset file which contains only vanilla assets.

    Needed Mods:
        - None

    Optional Mods:
        - None
*/

// Name of this preset
KPLIB_PRST_SETVAR("nameC", "Takistan Civilians");

/*------------------------------------------------------------
    --- Civilian Population ---
    Just normal civilians which are living in the area.
------------------------------------------------------------*/

// Civilian Citizens (KPLIB_preset_unitsPlC)
KPLIB_PRST_CAT_BEGIN("unitsPlC");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_white_grey_jacket");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_white_grey_coat");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_white_grey_waistcoat");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_brown");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_brown_brown_jacket");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_brown_light_brown_waistcoat");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_cream_grey_jacket");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_cream_grey_coat");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_cream_tricolor_waistcoat");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_olive");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_olive_light_brown_jacket");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_olive_woodland_waistcoat");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_tan_light_brown_jacket");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_tan_desert_waistcoat");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_tan_grey_coat");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_grey_brown_jacket");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_grey_brown_waistcoat");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_grey_black_coat");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_blue");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_blue_brown_coat");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_blue_grey_waistcoat");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_black");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_black_brown_jacket");
KPLIB_PRST_CAT_ADD("unitsPlC", "SpecLib_c_tk_civ_black_brown_waistcoat");

// Civilian Cars (KPLIB_preset_vehLightUnarmedPlC)
KPLIB_PRST_CAT_BEGIN("vehLightUnarmedPlC");
KPLIB_PRST_CAT_ADD("vehLightUnarmedPlC", "SpecLib_Gaz24_Taki_Civ_03");
KPLIB_PRST_CAT_ADD("vehLightUnarmedPlC", "SpecLib_Gaz24_Taki_Civ_01");
KPLIB_PRST_CAT_ADD("vehLightUnarmedPlC", "SpecLib_Gaz24_Taki_Civ_02");
KPLIB_PRST_CAT_ADD("vehLightUnarmedPlC", "SpecLib_S1203_Taki_Civ_01");
KPLIB_PRST_CAT_ADD("vehLightUnarmedPlC", "SpecLib_Taki_Civ_UAZ");
KPLIB_PRST_CAT_ADD("vehLightUnarmedPlC", "SpecLib_Taki_Civ_UAZ_Open");
KPLIB_PRST_CAT_ADD("vehLightUnarmedPlC", "SpecLib_Lada_Taki_Civ_04");
KPLIB_PRST_CAT_ADD("vehLightUnarmedPlC", "SpecLib_Lada_Taki_Civ_03");
KPLIB_PRST_CAT_ADD("vehLightUnarmedPlC", "SpecLib_JAWA353_Taki_Civ_01");
KPLIB_PRST_CAT_ADD("vehLightUnarmedPlC", "SpecLib_Old_bike_Taki_Civ_01");
KPLIB_PRST_CAT_ADD("vehLightUnarmedPlC", "SpecLib_tt650_Taki_Civ_01");

// Civilian Trucks (KPLIB_preset_vehTransPlC)
KPLIB_PRST_CAT_BEGIN("vehTransPlC");
KPLIB_PRST_CAT_ADD("vehTransPlC", "SpecLib_Ikarus_Taki_Civ_02");
KPLIB_PRST_CAT_ADD("vehTransPlC", "SpecLib_Taki_Civ_Ural_Work");

// Civilian Utility Vehicles (KPLIB_preset_logisticPlC)
KPLIB_PRST_CAT_BEGIN("logisticPlC");
KPLIB_PRST_CAT_ADD("logisticPlC", "SpecLib_Taki_Civ_Ural_Work_Open");
KPLIB_PRST_CAT_ADD("logisticPlC", "SpecLib_S1203_Taki_Civ_03");

// Civilian Helicopters (KPLIB_preset_heliTransPlC)
KPLIB_PRST_CAT_BEGIN("heliTransPlC");

// Civilian Planes (KPLIB_preset_planeTransPlC)
KPLIB_PRST_CAT_BEGIN("planeTransPlC");
KPLIB_PRST_CAT_ADD("planeTransPlC", "SpecLib_AN2");


/*------------------------------------------------------------
    --- Humanitarian Institution ---
    Units/Vehicles from a humanitarian institution like IDAP.
------------------------------------------------------------*/

// Engineer (EOD Specialist)
KPLIB_PRST_SETVAR("rsEngineerIdap", "C_IDAP_Man_EOD_01_F");
// Helicopter Pilot
KPLIB_PRST_SETVAR("rsPilotHeliIdap", "C_IDAP_Pilot_01_F");
// Medic
KPLIB_PRST_SETVAR("rsMedicIdap", "C_IDAP_Man_Paramedic_01_F");
// Medical Truck
KPLIB_PRST_SETVAR("respawnTruckIdap", "C_IDAP_Van_02_medevac_F");

// IDAP Units (KPLIB_preset_unitsPlIdap)
KPLIB_PRST_CAT_BEGIN("unitsPlIdap");
KPLIB_PRST_CAT_ADD("idapUnitsPlC", "C_IDAP_Man_AidWorker_01_F");
KPLIB_PRST_CAT_ADD("idapUnitsPlC", "C_IDAP_Man_AidWorker_02_F");
KPLIB_PRST_CAT_ADD("idapUnitsPlC", "C_IDAP_Man_AidWorker_03_F");
KPLIB_PRST_CAT_ADD("idapUnitsPlC", "C_IDAP_Man_AidWorker_04_F");
KPLIB_PRST_CAT_ADD("idapUnitsPlC", "C_IDAP_Man_AidWorker_05_F");
KPLIB_PRST_CAT_ADD("idapUnitsPlC", "C_IDAP_Man_AidWorker_06_F");
KPLIB_PRST_CAT_ADD("idapUnitsPlC", "C_IDAP_Man_AidWorker_07_F");
KPLIB_PRST_CAT_ADD("idapUnitsPlC", "C_IDAP_Man_AidWorker_08_F");
KPLIB_PRST_CAT_ADD("idapUnitsPlC", "C_IDAP_Man_AidWorker_09_F");

// IDAP Cars (KPLIB_preset_vehLightUnarmedPlIdap)
KPLIB_PRST_CAT_BEGIN("vehLightUnarmedPlIdap");
KPLIB_PRST_CAT_ADD("vehLightUnarmedPlIdap", "C_IDAP_Offroad_01_F");
KPLIB_PRST_CAT_ADD("vehLightUnarmedPlIdap", "C_IDAP_Offroad_02_unarmed_F");
KPLIB_PRST_CAT_ADD("vehLightUnarmedPlIdap", "C_IDAP_Van_02_transport_F");

// IDAP Trucks (KPLIB_preset_vehTransPlIdap)
KPLIB_PRST_CAT_BEGIN("vehTransPlIdap");
KPLIB_PRST_CAT_ADD("vehTransPlIdap", "C_IDAP_Truck_02_F");
KPLIB_PRST_CAT_ADD("vehTransPlIdap", "C_IDAP_Truck_02_transport_F");

// Civilian Helicopters (KPLIB_preset_heliTransPlIdap)
KPLIB_PRST_CAT_BEGIN("heliTransPlIdap");
KPLIB_PRST_CAT_ADD("heliTransPlIdap", "C_IDAP_Heli_Transport_02_F");


/*-------------------------------
    !!! DO NOT EDIT BELOW !!!
-------------------------------*/

// Preset was properly parsed, if this is not set player will be informed about errors
KPLIB_validationNamespace setVariable [KPLIB_PRST_VAR("checkedC"), true];

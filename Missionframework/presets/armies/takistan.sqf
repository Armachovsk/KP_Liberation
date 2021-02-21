#include "script_component.hpp"
/*
    Liberation Taki Army Preset

    File: takistanArmy.sqf
    Author: Reidond - https://github.com/Reidond
    Date: 2018-11-17
    Last Update: Date.now()
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        -

    Needed Mods:
        - SpecOps
        - CUP Terrains

    Optional Mods:
        - None
*/

params [
    ["_isFriendly", false, [false]]
];


/*------------------------------------------------------------
    --- GENERAL SETTINGS ---
    General stuff like side and colors.
------------------------------------------------------------*/

// Name of the used/created army in this preset
KPLIB_PRST_SETVAR("name", "Takistan Army");

// Military alphabet
KPLIB_PRST_CAT_BEGIN("alphabet");
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Alpha";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Bravo";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Charlie";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Delta";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Echo";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Foxtrot";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Golf";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Hotel";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "India";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Juliet";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Kilo";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Lima";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Mike";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "November";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Oscar";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Papa";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Quebec";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Romeo";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Sierra";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Tango";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Uniform";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Victor";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Whiskey";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "X-Ray";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Yankee";
(KPLIB_PRST_GETVAR("alphabet")) pushBack "Zulu";


/*------------------------------------------------------------
    --- IMPORTANT UNIQUE CLASSNAMES ---
    Each of these has to be unique.
    Don't use any of the entered classnames anywhere else in the preset.
------------------------------------------------------------*/

// The building defined to unlock FOB air vehicle availability.
KPLIB_PRST_SETVAR("airBuilding", "TK_WarfareBUAVterminal_Base_EP1");
// This is the virtual arsenal as portable supply crate.
KPLIB_PRST_SETVAR("arsenalBox", "O_supplyCrate_F");
// This defines the ammunition resource crates.
KPLIB_PRST_SETVAR("crateAmmo", "O_CargoNet_01_ammo_F");
// This defines the fuel resource crates.
KPLIB_PRST_SETVAR("crateFuel", "CargoNet_01_barrels_F");
// This defines the supply resource crates.
KPLIB_PRST_SETVAR("crateSupply", "CargoNet_01_box_F");
// This is the FOB as a container.
KPLIB_PRST_SETVAR("fobBox", "Land_Pod_Heli_Transport_04_box_F");
// This is the main FOB HQ building.
KPLIB_PRST_SETVAR("fobBuilding", "WarfareBDepot");
// This is the FOB as a vehicle..
KPLIB_PRST_SETVAR("fobTruck", "CPC_ME_O_KAM_gaz66_r142");
// The building defined to unlock FOB logistic functionalities.
KPLIB_PRST_SETVAR("logiBuilding", "Land_RepairDepot_01_tan_F");
// This is Potato 01, a multipurpose mobile respawn as a helicopter.
KPLIB_PRST_SETVAR("potato", "CPC_ME_O_KAM_Mi8AMT");
// This is the mobile respawn (and medical) truck.
KPLIB_PRST_SETVAR("respawnTruck", "CPC_ME_O_KAM_gaz66_r142");
// The helipad used to increase the GLOBAL rotary-wing cap.
KPLIB_PRST_SETVAR("slotHeli", "Land_HelipadSquare_F");
// The hangar used to increase the GLOBAL fixed-wing cap.
KPLIB_PRST_SETVAR("slotJet", "Land_TentHangar_V1_F");
// The large storage area for resources.
KPLIB_PRST_SETVAR("storageLarge", "ContainmentArea_01_sand_F");
// The small storage area for resources.
KPLIB_PRST_SETVAR("storageSmall", "ContainmentArea_02_sand_F");


/*------------------------------------------------------------
    --- ADDITIONAL MECHANICS CLASSNAMES ---
    Classnames of additional mechanics/functionalities in the mission.
    The entered classnames can be reused somewhere else in the preset.
------------------------------------------------------------*/

// These are the boats which spawn in the boat racks of the Liberty.
KPLIB_PRST_SETVAR("addBoat", "O_Boat_Transport_01_F");
// These are the additional helicopter which spawns at the Operation Base.
KPLIB_PRST_SETVAR("addHeli", "CPC_ME_O_KAM_uh1h");
// These are the trucks which are used in the logistic convoy system.
KPLIB_PRST_SETVAR("logiTruck", "CPC_ME_O_KAM_ural_open");
// Static Mortar Classname
KPLIB_PRST_SETVAR("mortar", "CPC_ME_O_KAM_2b14_82mm");
// Static AA Classname
KPLIB_PRST_SETVAR("staticAa", "CPC_ME_O_KAM_Igla_AA_pod");
// Static Big AA Classname
KPLIB_PRST_SETVAR("staticAaBig", "O_SAM_System_04_F");
// Static Big AA Radar Classname
KPLIB_PRST_SETVAR("staticAaBigRadar", "O_Radar_System_02_F");
// Static AT Classname
KPLIB_PRST_SETVAR("staticAt", "CPC_ME_O_KAM_Metis");


/*------------------------------------------------------------
    --- REGULAR SOLDIER CLASSNAMES ---
    Classnames of the different regular soldier types.
    Every variable needs a valid classname. Duplicates are fine.
------------------------------------------------------------*/

// AA Specialist
KPLIB_PRST_SETVAR("rsAntiAir", "CPC_ME_O_KAM_soldier_AA");
// AT Specialist
KPLIB_PRST_SETVAR("rsAntiTank", "CPC_ME_O_KAM_soldier_AT");
// Autorifleman
KPLIB_PRST_SETVAR("rsAutorifleMan", "CPC_ME_O_KAM_soldier_AR");
// Helicopter crew
KPLIB_PRST_SETVAR("rsCrewmanHeli", "CPC_ME_O_KAM_soldier_HeliPilot");
// Vehicle crew
KPLIB_PRST_SETVAR("rsCrewmanVeh", "CPC_ME_O_KAM_soldier_crew");
// Engineer
KPLIB_PRST_SETVAR("rsEngineer", "CPC_ME_O_KAM_soldier_ENG");
// Grenadier
KPLIB_PRST_SETVAR("rsGrenadier", "CPC_ME_O_KAM_soldier_GL");
// Heavy Gunner
KPLIB_PRST_SETVAR("rsHeavyGunner", "CPC_ME_O_KAM_soldier_MG");
// Helicopter pilot
KPLIB_PRST_SETVAR("rsPilotHeli", "CPC_ME_O_KAM_soldier_HeliPilot");
// Jet pilot
KPLIB_PRST_SETVAR("rsPilotJet", "CPC_ME_O_KAM_soldier_Pilot");
// Light Anti Tank
KPLIB_PRST_SETVAR("rsLightAt", "CPC_ME_O_KAM_soldier_LAT");
// Marksman
KPLIB_PRST_SETVAR("rsMarksman", "CPC_ME_O_KAM_soldier_M");
// Medic
KPLIB_PRST_SETVAR("rsMedic", "CPC_ME_O_KAM_soldier_Medic");
// Officer
KPLIB_PRST_SETVAR("rsOfficer", "CPC_ME_O_KAM_soldier_Officer");
// Paratrooper
KPLIB_PRST_SETVAR("rsParatrooper", "CPC_ME_O_KAM_soldier_l1a1");
// Rifleman
KPLIB_PRST_SETVAR("rsRifleman", "CPC_ME_O_KAM_soldier");
// Sharpshooter
KPLIB_PRST_SETVAR("rsSharpshooter", "CPC_ME_O_KAM_soldier_M");
// Squad Leader
KPLIB_PRST_SETVAR("rsSquadLeader", "CPC_ME_O_KAM_soldier_TL");
// Survivor (no weapons, etc.)
KPLIB_PRST_SETVAR("rsSurvivor", "CPC_ME_O_KAM_soldier");
// Team Leader
KPLIB_PRST_SETVAR("rsTeamLeader", "CPC_ME_O_KAM_soldier_Officer");


/*------------------------------------------------------------
    --- SPECIAL FORCES CLASSNAMES ---
    Classnames of the different special forces soldiers.
    Every variable needs a valid classname. Duplicates are fine.
------------------------------------------------------------*/

// Special Forces Diver
KPLIB_PRST_SETVAR("sfDiver", "O_diver_F");
// Special Forces Explosive Specialist
KPLIB_PRST_SETVAR("sfExplosive", "CPC_ME_O_KAM_soldier_EXP");
// Special Forces Light Anti Tank
KPLIB_PRST_SETVAR("sfLightAt", "CPC_ME_O_KAM_soldier_LAT");
// Special Forces Marksman
KPLIB_PRST_SETVAR("sfMarksman", "CPC_ME_O_KAM_soldier_M");
// Special Forces Medic
KPLIB_PRST_SETVAR("sfMedic", "CPC_ME_O_KAM_soldier_Medic");
// Special Forces Rifleman
KPLIB_PRST_SETVAR("sfRifleman", "CPC_ME_O_KAM_soldier");
// Special Forces Sharpshooter
KPLIB_PRST_SETVAR("sfSharpshooter", "CPC_ME_O_KAM_soldier_M");
// Special Forces Sniper
KPLIB_PRST_SETVAR("sfSniper", "CPC_ME_O_KAM_soldier_M");
// Special Forces Spotter
KPLIB_PRST_SETVAR("sfSpotter", "CPC_ME_O_KAM_soldier");
// Special Forces Teamleader
KPLIB_PRST_SETVAR("sfTeamLeader", "CPC_ME_O_KAM_soldier_TL");


/*------------------------------------------------------------
    --- BUILDABLE OBJECTS ARRAYS ---
    The arrays below are used to determine what can be build.
    Format: "classname", supplies, ammunition, fuel
    Example: KPLIB_PRST_CAT_ADD("lVeh", "B_MRAP_01_F", 100, 0, 50);
    The above example adds the NATO Hunter MRAP to the light vehicles list
    with the costs of 100 supplies, 0 ammunition and 50 fuel.
------------------------------------------------------------*/

// Infantry units
KPLIB_PRST_CAT_BEGIN("units");
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsRifleman"),                  20,    0,    0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsLightAt"),                   30,    0,    0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsGrenadier"),                 25,    0,    0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsAutorifleMan"),              25,    0,    0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsHeavyGunner"),               35,    0,    0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsMarksman"),                  30,    0,    0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsAntiTank"),                  50,   10,    0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsAntiAir"),                   50,   10,    0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsMedic"),                     30,    0,    0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsEngineer"),                  30,    0,    0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsParatrooper"),               20,    0,    0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsCrewmanVeh"),                10,    0,    0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsCrewmanHeli"),               10,    0,    0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsPilotHeli"),                 10,    0,    0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsPilotJet"),                  10,    0,    0);
KPLIB_PRST_CAT_END("units");

// Special Forces units
KPLIB_PRST_CAT_BEGIN("specOps");
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfRifleman"),                50,    0,    0);
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfLightAt"),                 80,    0,    0);
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfMarksman"),                80,    0,    0);
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfMedic"),                   80,    0,    0);
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfExplosive"),               80,    0,    0);
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfSpotter"),                 80,    0,    0);
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfSharpshooter"),            85,    0,    0);
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfSniper"),                 100,   10,    0);
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfDiver"),                  100,    0,    0);
KPLIB_PRST_CAT_END("specOps");

// Light vehicles (unarmed)
KPLIB_PRST_CAT_BEGIN("vehLightUnarmed");
KPLIB_PRST_CAT_ADD("vehLightUnarmed", "O_Quadbike_01_F",                      50,    0,   25);
KPLIB_PRST_CAT_ADD("vehLightUnarmed", "CPC_ME_O_KAM_uaz_open",                75,    0,   50);
KPLIB_PRST_CAT_ADD("vehLightUnarmed", "CPC_ME_O_KAM_uaz",                     100,    0,   50);
KPLIB_PRST_CAT_END("vehLightUnarmed");

// Light vehicles (armed)
KPLIB_PRST_CAT_BEGIN("vehLightArmed");
KPLIB_PRST_CAT_ADD("vehLightArmed", "CPC_ME_O_KAM_uaz_dshkm",                 75,   40,   50);
KPLIB_PRST_CAT_ADD("vehLightArmed", "CPC_ME_O_KAM_uaz_spg9",                  75,   50,   50);
KPLIB_PRST_CAT_ADD("vehLightArmed", "VTN_TOYOTA_KADDB",                       100,   40,   50);
KPLIB_PRST_CAT_ADD("vehLightArmed", "VTN_TOYOTA_KADDB_NSVS",                  100,   60,   50);
KPLIB_PRST_CAT_END("vehLightArmed");

// Transport trucks
KPLIB_PRST_CAT_BEGIN("vehTrans");
KPLIB_PRST_CAT_ADD("vehTrans", "CPC_ME_O_KAM_ural_open",                     125,    0,   75);
KPLIB_PRST_CAT_ADD("vehTrans", "CPC_ME_O_KAM_ural",                          125,    0,   75);
KPLIB_PRST_CAT_END("vehTrans");

// Boats
KPLIB_PRST_CAT_BEGIN("boats");
KPLIB_PRST_CAT_ADD("boats", "O_Boat_Transport_01_F",                         100,    0,   25);
KPLIB_PRST_CAT_ADD("boats", "O_Boat_Armed_01_hmg_F",                         200,   80,   75);
KPLIB_PRST_CAT_ADD("boats", "O_SDV_01_F",                                    150,    0,   50);
KPLIB_PRST_CAT_END("boats");

// APCs
KPLIB_PRST_CAT_BEGIN("vehHeavyApc");
KPLIB_PRST_CAT_ADD("vehHeavyApc", "CPC_ME_O_KAM_BTR60",                      200,   75,  125);
KPLIB_PRST_CAT_ADD("vehHeavyApc", "CPC_ME_O_KAM_BTR70",                      300,  100,  150);
KPLIB_PRST_CAT_END("vehHeavyApc");

// Heavy vehicles
KPLIB_PRST_CAT_BEGIN("vehHeavy");
KPLIB_PRST_CAT_ADD("vehHeavy", "CPC_ME_O_KAM_T72B",                          300,  250,  180);
KPLIB_PRST_CAT_ADD("vehHeavy", "CPC_ME_O_KAM_T72BB",                         310,  260,  190);
KPLIB_PRST_CAT_END("vehHeavy");

// Anti Air vehicles
KPLIB_PRST_CAT_BEGIN("vehAntiAir");
KPLIB_PRST_CAT_ADD("vehAntiAir", "CPC_ME_O_KAM_ZSU",                         300,  250,  175);
KPLIB_PRST_CAT_END("vehAntiAir");

// Artillery vehicles
KPLIB_PRST_CAT_BEGIN("vehArty");
KPLIB_PRST_CAT_ADD("vehArty", "CPC_ME_O_KAM_BM21",                           600, 1250,  300);
KPLIB_PRST_CAT_END("vehArty");

// Transport Helicopters
KPLIB_PRST_CAT_BEGIN("heliTrans");
KPLIB_PRST_CAT_ADD("heliTrans", "CPC_ME_O_KAM_uh1h",                         200,    0,  100);
KPLIB_PRST_CAT_ADD("heliTrans", "CPC_ME_O_KAM_uh1h_unarmed",                 250,    0,  150);
KPLIB_PRST_CAT_ADD("heliTrans", "CPC_ME_O_KAM_Mi8mt",                        275,    0,  175);
KPLIB_PRST_CAT_ADD("heliTrans", "CPC_ME_O_KAM_Mi8AMT",                       275,    0,  175);
KPLIB_PRST_CAT_END("heliTrans");

// Attack Helicopters
KPLIB_PRST_CAT_BEGIN("heliAttack");
KPLIB_PRST_CAT_ADD("heliAttack", "CPC_ME_O_KAM_uh1h_gunship",                250,  100,  150);
KPLIB_PRST_CAT_ADD("heliAttack", "CPC_ME_O_KAM_Mi24D_Early",                 500,  400,  200);
KPLIB_PRST_CAT_END("heliAttack");

KPLIB_PRST_CAT_BEGIN("planeTrans");
KPLIB_PRST_CAT_END("planeTrans");

// Jets
KPLIB_PRST_CAT_BEGIN("jets");
KPLIB_PRST_CAT_ADD("jets", "CPC_ME_O_KAM_L159",                              1000,  800,  400);
KPLIB_PRST_CAT_ADD("jets", "CPC_ME_O_KAM_Su25",                              1500, 1750,  450);
KPLIB_PRST_CAT_END("jets");

// Static Defenses
KPLIB_PRST_CAT_BEGIN("statics");
KPLIB_PRST_CAT_ADD("statics", KPLIB_PRST_GETVAR("staticAa"),                  50,  100,    0);
KPLIB_PRST_CAT_ADD("statics", KPLIB_PRST_GETVAR("staticAt"),                  50,  100,    0);
KPLIB_PRST_CAT_ADD("statics", KPLIB_PRST_GETVAR("mortar"),                    80,  150,    0);
KPLIB_PRST_CAT_ADD("statics", KPLIB_PRST_GETVAR("staticAaBig"),              250,  300,    0);
KPLIB_PRST_CAT_END("statics");

// Logistic vehicles and objects
KPLIB_PRST_CAT_BEGIN("logistic");
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("arsenalBox"),              100,  200,    0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("respawnTruck"),            200,    0,  100);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("fobBox"),                  300,  500,    0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("fobTruck"),                300,  500,   75);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("storageSmall"),              0,    0,    0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("storageLarge"),              0,    0,    0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("logiBuilding"),            250,    0,    0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("airBuilding"),            1000,    0,    0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("slotHeli"),                250,    0,    0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("slotJet"),                 500,    0,    0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("staticAaBigRadar"),        250,    0,    0);
KPLIB_PRST_CAT_ADD("logistic", "CPC_ME_O_KAM_ural_repair",                   325,    0,   75);
KPLIB_PRST_CAT_ADD("logistic", "CPC_ME_O_KAM_ural_fuel",                     125,    0,  275);
KPLIB_PRST_CAT_ADD("logistic", "CPC_ME_O_KAM_gaz66_ammo",                    125,  200,   75);
KPLIB_PRST_CAT_END("logistic");

// Decorative Objects
KPLIB_PRST_CAT_BEGIN("deco");
KPLIB_PRST_CAT_ADD("deco", "Land_Cargo_House_V1_F",                            0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_Cargo_Patrol_V1_F",                           0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_Cargo_Tower_V1_F",                            0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Flag_CSAT_F",                                      0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Flag_Viper_F",                                     0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Flag_White_F",                                     0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_Medevac_house_V1_F",                          0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_Medevac_HQ_V1_F",                             0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Flag_RedCrystal_F",                                0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "CamoNet_OPFOR_F",                                  0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "CamoNet_OPFOR_open_F",                             0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "CamoNet_OPFOR_big_F",                              0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_PortableLight_single_F",                      0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_PortableLight_double_F",                      0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_LampSolar_F",                                 0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_LampHalogen_F",                               0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_LampStreet_small_F",                          0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_LampAirport_F",                               0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_HelipadCircle_F",                             0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_HelipadRescue_F",                             0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "PortableHelipadLight_01_blue_F",                   0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "PortableHelipadLight_01_green_F",                  0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "PortableHelipadLight_01_red_F",                    0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_CampingChair_V1_F",                           0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_CampingChair_V2_F",                           0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_CampingTable_F",                              0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "MapBoard_altis_F",                                 0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "MapBoard_stratis_F",                               0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "MapBoard_seismic_F",                               0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_Pallet_MilBoxes_F",                           0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_PaperBox_open_empty_F",                       0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_PaperBox_open_full_F",                        0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_PaperBox_closed_F",                           0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_DieselGroundPowerUnit_01_F",                  0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_ToolTrolley_02_F",                            0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_Workbench_01_F",                              0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_GasTank_01_blue_F",                           0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_GasTank_01_khaki_F",                          0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_GasTank_01_yellow_F",                         0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_GasTank_02_F",                                0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_BarrelWater_F",                               0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_BarrelWater_grey_F",                          0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_WaterBarrel_F",                               0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_WaterTank_F",                                 0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_BagFence_Round_F",                            0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_BagFence_Short_F",                            0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_BagFence_Long_F",                             0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_BagFence_Corner_F",                           0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_BagFence_End_F",                              0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_BagBunker_Small_F",                           0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_BagBunker_Large_F",                           0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_BagBunker_Tower_F",                           0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_HBarrier_1_F",                                0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_HBarrier_3_F",                                0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_HBarrier_5_F",                                0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_HBarrierWall4_F",                             0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_HBarrierWall6_F",                             0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_HBarrierWall_corner_F",                       0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_HBarrierWall_corridor_F",                     0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_HBarrierTower_F",                             0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_CncBarrierMedium_F",                          0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_CncBarrierMedium4_F",                         0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_Concrete_SmallWall_4m_F",                     0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_Concrete_SmallWall_8m_F",                     0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_CncShelter_F",                                0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_CncWall1_F",                                  0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_CncWall4_F",                                  0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_Sign_WarningMilitaryArea_F",                  0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_Sign_WarningMilAreaSmall_F",                  0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_Sign_WarningMilitaryVehicles_F",              0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_Razorwire_F",                                 0,    0,    0);
KPLIB_PRST_CAT_END("deco");


/*------------------------------------------------------------
    --- LOCKED VEHICLE CLASSNAMES ---
    Classnames of vehicles which shouldn't be available from the start.
    The listed classnames have to be also listed in one of the build categories above.
    You can leave this category empty, but leave the line with BEGIN untouched.
------------------------------------------------------------*/

KPLIB_PRST_CAT_BEGIN("lockedVehPl");
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "O_MBT_04_cannon_F";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "O_MBT_04_command_F";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "O_Heli_Attack_02_dynamicLoadout_F";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "O_Plane_Fighter_02_F";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "O_Plane_Fighter_02_Stealth_F";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "O_MBT_02_arty_F";


/*-------------------------------
    !!! DO NOT EDIT BELOW !!!
-------------------------------*/

// Preset was properly parsed, if this is not set player will be informed about errors
KPLIB_validationNamespace setVariable [KPLIB_PRST_VAR("checked"), true];

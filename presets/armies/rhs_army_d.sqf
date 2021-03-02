#include "script_component.hpp"
/*
    KP Liberation NATO Preset

    File: nato.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2018-11-17
    Last Update: 2019-04-17
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        NATO preset file which contains only vanilla assets.

    Needed Mods:
        - None

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
KPLIB_PRST_SETVAR("name", "Army D");

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
KPLIB_PRST_SETVAR("airBuilding", "US_WarfareBAircraftFactory_Base_EP1");
// This is the virtual arsenal as portable supply crate.
KPLIB_PRST_SETVAR("arsenalBox", "B_supplyCrate_F");
// This defines the ammunition resource crates.
KPLIB_PRST_SETVAR("crateAmmo", "B_CargoNet_01_ammo_F");
// This defines the fuel resource crates.
KPLIB_PRST_SETVAR("crateFuel", "CargoNet_01_barrels_F");
// This defines the supply resource crates.
KPLIB_PRST_SETVAR("crateSupply", "CargoNet_01_box_F");
// This is the FOB as a container.
KPLIB_PRST_SETVAR("fobBox", "B_Slingload_01_Cargo_F");
// This is the main FOB HQ building.
KPLIB_PRST_SETVAR("fobBuilding", "US_WarfareBBarracks_Base_EP1");
// This is the FOB as a vehicle.
KPLIB_PRST_SETVAR("fobTruck", "rhsusf_M1078A1P2_B_D_CP_fmtv_usarmy");
// The building defined to unlock FOB logistic functionalities.
KPLIB_PRST_SETVAR("logiBuilding", "US_WarfareBVehicleServicePoint_Base_EP1");
// This is Potato 01, a multipurpose mobile respawn as a helicopter.
KPLIB_PRST_SETVAR("potato", "RHS_CH_47F_10_cargo");
// This is the mobile respawn (and medical) truck.
KPLIB_PRST_SETVAR("respawnTruck", "rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy");
// The helipad used to increase the GLOBAL rotary-wing cap.
KPLIB_PRST_SETVAR("slotHeli", "Land_HelipadSquare_F");
// The hangar used to increase the GLOBAL fixed-wing cap.
KPLIB_PRST_SETVAR("slotJet", "US_WarfareBAntiAirRadar_Base_EP1");
// The large storage area for resources.
KPLIB_PRST_SETVAR("storageLarge", "ContainmentArea_01_sand_F");
// The small storage area for resources.
KPLIB_PRST_SETVAR("storageSmall", "ContainmentArea_02_sand_F");

KPLIB_PRST_SETVAR("towerMarker", "BMP2_HQ_TK_unfolded_Base_EP1");

/*------------------------------------------------------------
    --- ADDITIONAL MECHANICS CLASSNAMES ---
    Classnames of additional mechanics/functionalities in the mission.
    The entered classnames can be reused somewhere else in the preset.
------------------------------------------------------------*/

// These are the boats which spawn in the boat racks of the Liberty.
KPLIB_PRST_SETVAR("addBoat", "B_Boat_Transport_01_F");
// These are the additional helicopter which spawns at the Operation Base.
KPLIB_PRST_SETVAR("addHeli", "RHS_MELB_MH6M");
// This is multipurpose car.
KPLIB_PRST_SETVAR("addVeh", "rhsusf_m1152_usarmy_d");
// These are the trucks which are used in the logistic convoy system.
KPLIB_PRST_SETVAR("logiTruck", "rhsusf_M977A4_usarmy_d");
// Static Mortar Classname
KPLIB_PRST_SETVAR("mortar", "RHS_M252_D");
// Static AA Classname
KPLIB_PRST_SETVAR("staticAa", "RHS_Stinger_AA_pod_D");
// Static Big AA Classname
KPLIB_PRST_SETVAR("staticAaBig", "B_SAM_System_03_F");
// Static Big AA Radar Classname
KPLIB_PRST_SETVAR("staticAaBigRadar", "B_Radar_System_01_F");
// Static AT Classname
KPLIB_PRST_SETVAR("staticAt", "RHS_TOW_TriPod_D");


/*------------------------------------------------------------
    --- REGULAR SOLDIER CLASSNAMES ---
    Classnames of the different regular soldier types.
    Every variable needs a valid classname. Duplicates are fine.
------------------------------------------------------------*/

// AT Specialist (Javelin)
KPLIB_PRST_SETVAR("rsSurvivor", "rhsusf_army_ocp_javelin");
// AA Specialist
KPLIB_PRST_SETVAR("rsAntiAir", "rhsusf_army_ocp_aa");
// AT Specialist
KPLIB_PRST_SETVAR("rsAntiTank", "rhsusf_army_ocp_maaws");
// Autorifleman
KPLIB_PRST_SETVAR("rsAutorifleMan", "rhsusf_army_ocp_autorifleman");
// Helicopter crew
KPLIB_PRST_SETVAR("rsCrewmanHeli", "rhsusf_army_ocp_helicrew");
// Vehicle crew
KPLIB_PRST_SETVAR("rsCrewmanVeh", "rhsusf_army_ocp_crewman");
// Engineer
KPLIB_PRST_SETVAR("rsEngineer", "rhsusf_army_ocp_engineer");
// Grenadier
KPLIB_PRST_SETVAR("rsGrenadier", "rhsusf_army_ocp_grenadier");
// Heavy Gunner
KPLIB_PRST_SETVAR("rsHeavyGunner", "rhsusf_army_ocp_machinegunner");
// Helicopter pilot
KPLIB_PRST_SETVAR("rsPilotHeli", "rhsusf_army_ocp_helipilot");
// Jet pilot
KPLIB_PRST_SETVAR("rsPilotJet", "rhsusf_airforce_jetpilot");
// Light Anti Tank
KPLIB_PRST_SETVAR("rsLightAt", "rhsusf_army_ocp_riflemanat");
// Marksman
KPLIB_PRST_SETVAR("rsMarksman", "rhsusf_army_ocp_marksman");
// Medic
KPLIB_PRST_SETVAR("rsMedic", "rhsusf_army_ocp_medic");
// Officer
KPLIB_PRST_SETVAR("rsOfficer", "rhsusf_army_ocp_officer");
// Paratrooper
// KPLIB_PRST_SETVAR("rsParatrooper", "rhsusf_army_ocp_javelin");        Неактивный
// Rifleman
KPLIB_PRST_SETVAR("rsRifleman", "rhsusf_army_ocp_rifleman");
// Sharpshooter
KPLIB_PRST_SETVAR("rsSharpshooter", "rhsusf_army_ocp_sniper_m24sws");
// Squad Leader
KPLIB_PRST_SETVAR("rsSquadLeader", "rhsusf_army_ocp_squadleader");
// Team Leader
KPLIB_PRST_SETVAR("rsTeamLeader", "rhsusf_army_ocp_teamleader");


/*------------------------------------------------------------
    --- SPECIAL FORCES CLASSNAMES ---
    Classnames of the different special forces soldiers.
    Every variable needs a valid classname. Duplicates are fine.
------------------------------------------------------------*/

// Special Forces Diver
// KPLIB_PRST_SETVAR("sfDiver", "B_diver_F");                       Неактивный
// Special Forces Explosive Specialist
KPLIB_PRST_SETVAR("sfExplosive", "rhsusf_army_ocp_explosives");
// Special Forces Light Anti Tank
KPLIB_PRST_SETVAR("sfLightAt", "rhsusf_army_ocp_arb_riflemanat");
// Special Forces Marksman
KPLIB_PRST_SETVAR("sfMarksman", "rhsusf_army_ocp_arb_marksman");
// Special Forces Medic
KPLIB_PRST_SETVAR("sfMedic", "rhsusf_army_ocp_arb_medic");
// Special Forces Rifleman
KPLIB_PRST_SETVAR("sfRifleman", "rhsusf_army_ocp_arb_rifleman");
// Special Forces Sharpshooter
KPLIB_PRST_SETVAR("sfSharpshooter", "rhsusf_army_ocp_arb_autorifleman");
// Special Forces Sniper
KPLIB_PRST_SETVAR("sfSniper", "rhsusf_army_ocp_arb_sniper_m107");
// Special Forces Spotter
KPLIB_PRST_SETVAR("sfSpotter", "rhsusf_army_ocp_jfo");
// Special Forces Teamleader
KPLIB_PRST_SETVAR("sfTeamLeader", "rhsusf_army_ocp_arb_teamleader");


/*------------------------------------------------------------
    --- BUILDABLE OBJECTS ARRAYS ---
    The arrays below are used to determine what can be build.
    Format: "classname", supplies, ammunition, fuel
    Example: KPLIB_PRST_CAT_ADD("vehLightUnarmed", "B_MRAP_01_F", 100, 0, 50);
    The above example adds the NATO Hunter MRAP to the unarmed light vehicles list
    with the costs of 100 supplies, 0 ammunition and 50 fuel.
------------------------------------------------------------*/

// Infantry units
KPLIB_PRST_CAT_BEGIN("units");
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsRifleman"),                      10,  0,  0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsLightAt"),                      10,  20,  0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsGrenadier"),                    10,  10,  0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsAutorifleMan"),                  20,  0,  0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsHeavyGunner"),                   20,  0,  0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsMarksman"),                      20,  0,  0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsAntiTank"),                     10,  60,  0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsAntiAir"),                      10,  60,  0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsMedic"),                         20,  0,  0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsEngineer"),                      20,  0,  0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsrsSurvivor"),                   10,  70,  0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsParatrooper"),                   10,  0,  0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsCrewmanVeh"),                    10,  0,  0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsCrewmanHeli"),                   10,  0,  0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsPilotHeli"),                     10,  0,  0);
KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsPilotJet"),                      10,  0,  0);
KPLIB_PRST_CAT_END("units");

// Special Forces units
KPLIB_PRST_CAT_BEGIN("specOps");
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfRifleman"),                    20,  0,  0);
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfLightAt"),                    20,  20,  0);
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfMarksman"),                    30,  0,  0);
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfMedic"),                       30,  0,  0);
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfExplosive"),                  20,  40,  0);
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfSpotter"),                     20,  0,  0);
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfSharpshooter"),                30,  0,  0);
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfSniper"),                      30,  0,  0);
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfDiver"),                       20,  0,  0);
KPLIB_PRST_CAT_END("specOps");

// Light vehicles (unarmed)
KPLIB_PRST_CAT_BEGIN("vehLightUnarmed");
KPLIB_PRST_CAT_ADD("vehLightUnarmed", "rhsusf_mrzr4_d",                          60,  0,  30);   // MRZR
KPLIB_PRST_CAT_ADD("vehLightUnarmed", "rhsusf_m1151_usarmy_d",                  150,  0,  60);   // M1151A1
KPLIB_PRST_CAT_ADD("vehLightUnarmed", "rhsusf_M1230a1_usarmy_d",                290,  0,  90);   // M1230A1 (MEDEVAC)
KPLIB_PRST_CAT_END("vehLightUnarmed");

// Light vehicles (armed)
KPLIB_PRST_CAT_BEGIN("vehLightArmed");
KPLIB_PRST_CAT_ADD("vehLightArmed", "rhsusf_m1151_m2_v2_usarmy_d",             150,  50,  60);   // M1151A1 (O-GPK/M2)
KPLIB_PRST_CAT_ADD("vehLightArmed", "rhsusf_m1151_mk19_v2_usarmy_d",           150,  80,  60);   // M1151A1 (O-GPK/Mk19)
KPLIB_PRST_CAT_ADD("vehLightArmed", "rhsusf_m1151_m2_lras3_v1_usarmy_d",       160,  50,  60);   // M1151A1 (GPK/M2/LRAS3)
KPLIB_PRST_CAT_ADD("vehLightArmed", "rhsusf_m1151_m2crows_usarmy_d",          150,  100,  60);   // M1151A1 (CROWS/M2)
KPLIB_PRST_CAT_ADD("vehLightArmed", "rhsusf_m1151_mk19crows_usarmy_d",        150,  160,  60);   // M1151A1 (CROWS/Mk19)
KPLIB_PRST_CAT_ADD("vehLightArmed", "rhsusf_m1045_d",                         120,  100,  50);   // M1045A2 (M220A2)
KPLIB_PRST_CAT_ADD("vehLightArmed", "rhsusf_m1240a1_m2_usarmy_d",             200,  50,  110);   // M1240 (O-GPK/M2)
KPLIB_PRST_CAT_ADD("vehLightArmed", "rhsusf_m1240a1_mk19_usarmy_d",           200,  80,  110);   // M1240 (O-GPK/Mk19)
KPLIB_PRST_CAT_ADD("vehLightArmed", "rhsusf_m1245_m2crows_socom_deploy",     200,  100,  110);   // M1245 Deploy (CROWS/M2)
KPLIB_PRST_CAT_ADD("vehLightArmed", "rhsusf_m1245_mk19crows_socom_deploy",   200,  160,  110);   // M1245 Deploy (CROWS/Mk19)
KPLIB_PRST_CAT_END("vehLightArmed");

// Transport trucks
KPLIB_PRST_CAT_BEGIN("vehTrans");
KPLIB_PRST_CAT_ADD("vehTrans", "rhsusf_M1078A1P2_D_fmtv_usarmy",                100,  0,  70);   // M1078A1P2
KPLIB_PRST_CAT_ADD("vehTrans", "rhsusf_M1078A1P2_B_D_fmtv_usarmy",              150,  0,  70);   // M1078A1P2-B
KPLIB_PRST_CAT_ADD("vehTrans", "rhsusf_M1078A1P2_B_M2_D_fmtv_usarmy",          150,  50,  70);   // M1078A1P2-B (O-GPK/М2)
KPLIB_PRST_CAT_ADD("vehTrans", "rhsusf_M1084A1R_SOV_M2_D_fmtv_socom",          100,  50,  90);   // M1084A1R SOV (M2)
KPLIB_PRST_CAT_ADD("vehTrans", "rhsusf_M1084A1P2_B_D_fmtv_usarmy",              150,  0,  90);   // M1084A1P2-B
KPLIB_PRST_CAT_ADD("vehTrans", "rhsusf_M1084A1P2_B_M2_D_fmtv_usarmy",          150,  50,  90);   // M1084A1P2-B (O-GPK/M2)
KPLIB_PRST_CAT_ADD("vehTrans", "rhsusf_M1239_socom_d",                         200,  0,  180);   // M1239 AUV
KPLIB_PRST_CAT_END("vehTrans");

// Boats
KPLIB_PRST_CAT_BEGIN("boats");
KPLIB_PRST_CAT_ADD("boats", "B_Boat_Transport_01_F",                             40,  0,  20);   // Assault Boat
KPLIB_PRST_CAT_ADD("boats", "rhsusf_mkvsoc",                                 200,  150,  400);   // Mk.V SOC
KPLIB_PRST_CAT_ADD("boats", "B_SDV_01_F",                                       80,  0,  50);   // SDV
KPLIB_PRST_CAT_END("boats");

// APCs
KPLIB_PRST_CAT_BEGIN("vehHeavyApc");
KPLIB_PRST_CAT_ADD("vehHeavyApc", "RHS_M2A3",                                330,  320,  140);   // M2A3
KPLIB_PRST_CAT_ADD("vehHeavyApc", "RHS_M2A3_BUSKI",                          530,  320,  140);   // M2A3 (BUSK I)
KPLIB_PRST_CAT_ADD("vehHeavyApc", "rhsusf_stryker_m1126_m2_d",               300,  100,  110);   // M1126 (M2)
KPLIB_PRST_CAT_ADD("vehHeavyApc", "rhsusf_stryker_m1126_mk19_d",             300,  160,  110);   // M1126 (Mk19)
KPLIB_PRST_CAT_ADD("vehHeavyApc", "rhsusf_stryker_m1127_m2_d",                320,  50,  110);   // M1127 (M2/LRAS3)
KPLIB_PRST_CAT_ADD("vehHeavyApc", "rhsusf_stryker_m1134_d",                  300,  220,  110);   // M1134
KPLIB_PRST_CAT_ADD("vehHeavyApc", "rhsusf_stryker_m1132_m2_d",               320,  100,  110);   // M1132 (SMP/M2)
KPLIB_PRST_CAT_END("vehHeavyApc");

// Heavy vehicles
KPLIB_PRST_CAT_BEGIN("vehHeavy");
KPLIB_PRST_CAT_ADD("vehHeavy", "rhsusf_m1a2sep1d_usarmy",                    550,  490,  450);   // M1A2SEPv1
KPLIB_PRST_CAT_ADD("vehHeavy", "rhsusf_m1a2sep1tuskid_usarmy",               750,  540,  450);   // M1A2SEPv1 (TUSK I)
KPLIB_PRST_CAT_END("vehHeavy");

// Anti Air vehicles
KPLIB_PRST_CAT_BEGIN("vehAntiAir");
KPLIB_PRST_CAT_ADD("vehAntiAir", "RHS_M6",                                   300,  320,  140);   // M6A2
KPLIB_PRST_CAT_END("vehAntiAir");

// Artillery vehicles
KPLIB_PRST_CAT_BEGIN("vehArty");
KPLIB_PRST_CAT_ADD("vehArty", "rhsusf_m109d_usarmy",                        300,  1500,  110);   // М109А6
KPLIB_PRST_CAT_ADD("vehArty", "rhsusf_M142_usarmy_D",                        150,  1700,  90);   // M142 HIMARS
KPLIB_PRST_CAT_END("vehArty");

// Transport Helicopters
KPLIB_PRST_CAT_BEGIN("heliTrans");
KPLIB_PRST_CAT_ADD("heliTrans", "RHS_MELB_MH6M",                               260,  0,  150);   // MH-6M Little Bird
KPLIB_PRST_CAT_ADD("heliTrans", "vtx_UH60M",                                 400,  100,  500);   // UH-60M Blackhawk
KPLIB_PRST_CAT_ADD("heliTrans", "vtx_MH60M",                                 500,  100,  600);   // MH-60M
KPLIB_PRST_CAT_ADD("heliTrans", "vtx_MH60M_DAP",                             500,  500,  600);   // MH-60M DAP
KPLIB_PRST_CAT_ADD("heliTrans", "RHS_CH_47F_10",                             500,  100,  850);   // CH-47F
KPLIB_PRST_CAT_END("heliTrans");

// Attack Helicopters
KPLIB_PRST_CAT_BEGIN("heliAttack");
KPLIB_PRST_CAT_ADD("heliAttack", "RHS_MELB_AH6M",                            260,  500,  150);   // AH-6M Little Bird
KPLIB_PRST_CAT_ADD("heliAttack", "RHS_AH64D",                                680,  900,  750);   // AH-64D
KPLIB_PRST_CAT_END("heliAttack");

// Transport Planes
KPLIB_PRST_CAT_BEGIN("planeTrans");
KPLIB_PRST_CAT_ADD("planeTrans", "RHS_C130J",                                 800,  0,  1220);   // C-130J
KPLIB_PRST_CAT_ADD("planeTrans", "USAF_C17",                                 1150,  0,  1900);   // C-17 Globemaster III
KPLIB_PRST_CAT_END("planeTrans");

// Jets
KPLIB_PRST_CAT_BEGIN("jets");
KPLIB_PRST_CAT_ADD("jets", "USAF_RQ4A",                                        500,  0,  650);   // RQ-4A Global Hawk
KPLIB_PRST_CAT_ADD("jets", "USAF_MQ9",                                       290,  800,  460);   // MQ-9 Reaper
KPLIB_PRST_CAT_ADD("jets", "RHS_A10",                                      800,  1100,  1050);   // A-10A
KPLIB_PRST_CAT_ADD("jets", "RHS_AC130U",                                   850,  1300,  1220);   // AC-130U
KPLIB_PRST_CAT_END("jets");

// Static Defenses
KPLIB_PRST_CAT_BEGIN("statics");
KPLIB_PRST_CAT_ADD("statics", "B_SearchLight",                                    10,  0,  0);   // Searchlight
KPLIB_PRST_CAT_ADD("statics", "RHS_M2StaticMG_MiniTripod_D",                     10,  50,  0);   // M2HB (M3)
KPLIB_PRST_CAT_ADD("statics", "RHS_M2StaticMG_D",                                10,  50,  0);   // M2HB (M3 AA)
KPLIB_PRST_CAT_ADD("statics", "RHS_MK19_TriPod_WD",                              10,  80,  0);   // Mk19 (M3)
KPLIB_PRST_CAT_ADD("statics", "RHS_M119_D",                                    60,  1100,  0);   // M119A2
KPLIB_PRST_CAT_ADD("statics", KPLIB_PRST_GETVAR("staticAa"),                    20,  100,  0);   // FIM-92F (DMS)
KPLIB_PRST_CAT_ADD("statics", KPLIB_PRST_GETVAR("staticAt"),                    20,  100,  0);   // M41A4 TOW
KPLIB_PRST_CAT_ADD("statics", KPLIB_PRST_GETVAR("mortar"),                      10,  300,  0);   // M252
KPLIB_PRST_CAT_ADD("statics", KPLIB_PRST_GETVAR("staticAaBig"),                100,  400,  0);   // MIM-145 Defender
KPLIB_PRST_CAT_END("statics");

// Logistic/Utility vehicles and objects
KPLIB_PRST_CAT_BEGIN("logistic");
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("arsenalBox"),                  0,  200,  0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("respawnTruck"),               500,  0,  90);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("fobBox"),                  750,  700,  700);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("fobTruck"),                850,  700,  790);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("storageSmall"),                  0,  0,  0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("storageLarge"),                  0,  0,  0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("logiBuilding"),                350,  0,  0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("airBuilding"),                 900,  0,  0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("slotHeli"),                    250,  0,  0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("slotJet"),                     600,  0,  0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("staticAaBigRadar"),            300,  0,  0);   // AN/MPQ-105 Radar
KPLIB_PRST_CAT_ADD("logistic", "MRH_SAT_protectiveCase",                        1000,  0,  0);   // SATCOM gear crate
KPLIB_PRST_CAT_ADD("logistic", "rhsusf_M977A4_AMMO_BKIT_usarmy_d",           150,  300,  180);   // M977A4-B (Ammo)
KPLIB_PRST_CAT_ADD("logistic", "rhsusf_M977A4_AMMO_usarmy_d",                100,  300,  180);   // M977A4 (Ammo)
KPLIB_PRST_CAT_ADD("logistic", "rhsusf_M978A4_BKIT_usarmy_d",                  150,  0,  480);   // M978A4-B (Fuel)
KPLIB_PRST_CAT_ADD("logistic", "rhsusf_M978A4_usarmy_d",                       100,  0,  480);   // M978A4 (Fuel)
KPLIB_PRST_CAT_ADD("logistic", "rhsusf_M977A4_REPAIR_BKIT_usarmy_d",           450,  0,  180);   // M977A4-B (Repair)
KPLIB_PRST_CAT_ADD("logistic", "rhsusf_M977A4_REPAIR_usarmy_d",                400,  0,  180);   // M977A4 (Repair)
KPLIB_PRST_CAT_ADD("logistic", "B_Slingload_01_Repair_F",                        350,  0,  0);   // CH-47F (Repair Container)
KPLIB_PRST_CAT_ADD("logistic", "B_Slingload_01_Fuel_F",                         50,  0,  300);   // CH-47F (Fuel Container)
KPLIB_PRST_CAT_ADD("logistic", "B_Slingload_01_Ammo_F",                         50,  300,  0);   // CH-47F (Ammo Container)
KPLIB_PRST_CAT_END("logistic");

// Decorative Objects
KPLIB_PRST_CAT_BEGIN("deco");
KPLIB_PRST_CAT_ADD("deco", "US_WarfareBFieldhHospital_Base_EP1",                  50,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "PowGen_Big_EP1",                                      0,  0,  50);
KPLIB_PRST_CAT_ADD("deco", "Land_PowerGenerator_F",                               0,  0,  20);
KPLIB_PRST_CAT_ADD("deco", "Land_Fort_Watchtower_EP1",                            10,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_fortified_nest_big_EP1",                         10,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_HBarrierTower_F",                                10,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_fortified_nest_small_EP1",                        5,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_fort_rampart_EP1",                                5,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_fort_artillery_nest_EP1",                         5,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_HBarrierWall_corner_F",                           5,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_HBarrierWall4_F",                                 5,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_HBarrierWall_corridor_F",                         5,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_HBarrierWall6_F",                                 5,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_HBarrier_5_F",                                    5,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_HBarrier_Big_F",                                  5,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_CncBarrierMedium4_F",                             5,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_CncWall4_F",                                      5,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_HBarrier_3_F",                                    0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_HBarrier_1_F",                                    0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_BagFence_Round_F",                                0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_BagFence_Long_F",                                 0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_BagFence_Short_F",                                0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_BagFence_End_F",                                  0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_BagFence_Corner_F",                               0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_CncWall1_F",                                      0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_CncBarrierMedium_F",                              0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_CncBarrier_F",                                    0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_CncBarrier_stripes_F",                            0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Wire",                                                 0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Fort_RazorWire",                                       0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_CncShelter_F",                                    0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_CzechHedgehog_01_new_F",                          0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_CamoNet_NATO_EP1",                                0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_CamoNetB_NATO_EP1",                               0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_CamoNetVar_NATO_EP1",                             0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Flag_US_F",                                            0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Flag_NATO_F",                                          0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Flag_UNO_F",                                           0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Sign_Checkpoint_US_EP1",                               0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "SignM_FOB_Revolve_EP1",                                0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "SignM_FARP_Winchester_EP1",                            0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "SignM_UN_Base_EP1",                                    0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_LampHalogen_F",                                   0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_LampStreet_02_F",                                 0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_LampShabby_F",                                    0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_PortableLight_single_F",                          0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_PortableLight_double_F",                          0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_TentLamp_01_standing_F",                          0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_TentLamp_01_suspended_red_F",                     0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_TentLamp_01_suspended_F",                         0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_TentLamp_01_standing_red_F",                      0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "PortableHelipadLight_01_blue_F",                       0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "PortableHelipadLight_01_green_F",                      0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "PortableHelipadLight_01_red_F",                        0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_CampingTable_white_F",                            0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_CampingChair_V2_white_F",                         0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_Bench_05_F",                                      0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_WaterBarrel_F",                                   0,  0,  0);
KPLIB_PRST_CAT_ADD("deco", "Land_WaterTank_F",                                     0,  0,  0);
KPLIB_PRST_CAT_END("deco");


/*------------------------------------------------------------
    --- LOCKED VEHICLE CLASSNAMES ---
    Classnames of vehicles which shouldn't be available from the start.
    The listed classnames have to be also listed in one of the build categories above.
    You can leave this category empty, but leave the line with BEGIN untouched.
------------------------------------------------------------*/

KPLIB_PRST_CAT_BEGIN("lockedVehPl");
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "RHS_M2A3";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "RHS_M2A3_BUSKI";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "rhsusf_m1a2sep1d_usarmy";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "rhsusf_m1a2sep1tuskid_usarmy";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "rhsusf_m109d_usarmy";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "rhsusf_M142_usarmy_D";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "vtx_MH60M_DAP";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "RHS_AH64D";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "USAF_MQ9";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "RHS_A10";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "RHS_AC130U";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "RHS_M119_D";


/*-------------------------------
    !!! DO NOT EDIT BELOW !!!
-------------------------------*/

// Preset was properly parsed, if this is not set player will be informed about errors
KPLIB_validationNamespace setVariable [KPLIB_PRST_VAR("checked"), true];

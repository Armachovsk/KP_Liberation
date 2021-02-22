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
KPLIB_PRST_SETVAR("name", "NATO");

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
KPLIB_PRST_SETVAR("logiBuilding", "US_WarfareBHeavyFactory_Base_EP1");
// This is Potato 01, a multipurpose mobile respawn as a helicopter.
KPLIB_PRST_SETVAR("potato", "RHS_CH_47F_10_cargo");
// This is the mobile respawn (and medical) truck.
KPLIB_PRST_SETVAR("respawnTruck", "rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy");
// The helipad used to increase the GLOBAL rotary-wing cap.
KPLIB_PRST_SETVAR("slotHeli", "Land_HelipadSquare_F");
// The hangar used to increase the GLOBAL fixed-wing cap.
KPLIB_PRST_SETVAR("slotJet", "76n6ClamShell_EP1");
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
KPLIB_PRST_SETVAR("addBoat", "B_Boat_Transport_01_F");
// These are the additional helicopter which spawns at the Operation Base.
KPLIB_PRST_SETVAR("addHeli", "RHS_MELB_MH6M");
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
// Paratrooper (Non-Active)
// KPLIB_PRST_SETVAR("rsParatrooper", "B_soldier_PG_F");
// Rifleman
KPLIB_PRST_SETVAR("rsRifleman", "rhsusf_army_ocp_rifleman");
// Sharpshooter
KPLIB_PRST_SETVAR("rsSharpshooter", "rhsusf_army_ocp_sniper_m24sws");
// Squad Leader
KPLIB_PRST_SETVAR("rsSquadLeader", "rhsusf_army_ocp_squadleader");
// Survivor (no weapons, etc.) (Non-Active)
//KPLIB_PRST_SETVAR("rsSurvivor", "rhsusf_army_ocp_riflemanl");
// Team Leader
KPLIB_PRST_SETVAR("rsTeamLeader", "rhsusf_army_ocp_teamleader");


/*------------------------------------------------------------
    --- SPECIAL FORCES CLASSNAMES ---
    Classnames of the different special forces soldiers.
    Every variable needs a valid classname. Duplicates are fine.
------------------------------------------------------------*/

// Special Forces Diver (Non-Active)
//KPLIB_PRST_SETVAR("sfDiver", "B_diver_F");
// Special Forces Explosive Specialist
KPLIB_PRST_SETVAR("sfExplosive", "rhsusf_socom_marsoc_cso_eod");
// Special Forces Light Anti Tank
KPLIB_PRST_SETVAR("sfLightAt", "rhsusf_socom_marsoc_cso_grenadier");
// Special Forces Marksman
KPLIB_PRST_SETVAR("sfMarksman", "rhsusf_socom_marsoc_marksman");
// Special Forces Medic
KPLIB_PRST_SETVAR("sfMedic", "rhsusf_socom_marsoc_sarc");
// Special Forces Rifleman
KPLIB_PRST_SETVAR("sfRifleman", "rhsusf_socom_marsoc_cso");
// Special Forces Sharpshooter
KPLIB_PRST_SETVAR("sfSharpshooter", "rhsusf_socom_marsoc_sniper_m107");
// Special Forces Sniper
KPLIB_PRST_SETVAR("sfSniper", "rhsusf_socom_marsoc_sniper");
// Special Forces Spotter
KPLIB_PRST_SETVAR("sfSpotter", "rhsusf_socom_marsoc_jtac");
// Special Forces Teamleader
KPLIB_PRST_SETVAR("sfTeamLeader", "rhsusf_socom_marsoc_teamleader");


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
//KPLIB_PRST_CAT_ADD("units", KPLIB_PRST_GETVAR("rsParatrooper"),             20,    0,    0);
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
KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfSniper"),                  85,   10,    0);
//KPLIB_PRST_CAT_ADD("specOps", KPLIB_PRST_GETVAR("sfDiver"),                100,    0,    0);
KPLIB_PRST_CAT_END("specOps");

// Light vehicles (unarmed)
KPLIB_PRST_CAT_BEGIN("vehLightUnarmed");
KPLIB_PRST_CAT_ADD("vehLightUnarmed", "rhsusf_mrzr4_d",                          60,  0,  30);   // MRZR
KPLIB_PRST_CAT_ADD("vehLightUnarmed", "rhsusf_m1151_usarmy_d",                  150,  0,  60);   // M1151A1
KPLIB_PRST_CAT_ADD("vehLightUnarmed", "rhsusf_M1239_socom_d",                  200,  0,  130);   // M1239 AUV
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
KPLIB_PRST_CAT_END("vehTrans");

// Boats
KPLIB_PRST_CAT_BEGIN("boats");
KPLIB_PRST_CAT_ADD("boats", "B_Boat_Transport_01_F",                          40,    0,   25);   // Assault Boat
KPLIB_PRST_CAT_ADD("boats", "rhsusf_mkvsoc",                                 200,  150,  100);   // Mk.V SOC
KPLIB_PRST_CAT_ADD("boats", "B_SDV_01_F",                                        50,  0,  50);   // SDV
KPLIB_PRST_CAT_END("boats");

// APCs
KPLIB_PRST_CAT_BEGIN("vehHeavyApc");
KPLIB_PRST_CAT_ADD("vehHeavyApc", "RHS_M2A3",                                300,  300,  150);   // M2A3
KPLIB_PRST_CAT_ADD("vehHeavyApc", "RHS_M2A3_BUSKI",                          400,  300,  150);   // M2A3 (BUSK I)
KPLIB_PRST_CAT_ADD("vehHeavyApc", "rhsusf_stryker_m1126_m2_d",               300,  100,  110);   // M1126 (M2)
KPLIB_PRST_CAT_ADD("vehHeavyApc", "rhsusf_stryker_m1126_mk19_d",             300,  160,  110);   // M1126 (Mk19)
KPLIB_PRST_CAT_ADD("vehHeavyApc", "rhsusf_stryker_m1127_m2_d",                320,  50,  110);   // M1127 (M2/LRAS3)
KPLIB_PRST_CAT_ADD("vehHeavyApc", "rhsusf_stryker_m1134_d",                  300,  220,  110);   // M1134
KPLIB_PRST_CAT_ADD("vehHeavyApc", "rhsusf_stryker_m1132_m2_d",               320,  100,  110);   // M1132 (SMP/M2)
KPLIB_PRST_CAT_END("vehHeavyApc");

// Heavy vehicles
KPLIB_PRST_CAT_BEGIN("vehHeavy");
KPLIB_PRST_CAT_ADD("vehHeavy", "rhsusf_m1a2sep1d_usarmy",                    500,  470,  450);   // M1A2SEPv1
KPLIB_PRST_CAT_ADD("vehHeavy", "rhsusf_m1a2sep1tuskid_usarmy",               700,  520,  450);   // M1A2SEPv1 (TUSK I)
KPLIB_PRST_CAT_END("vehHeavy");

// Anti Air vehicles
KPLIB_PRST_CAT_BEGIN("vehAntiAir");
KPLIB_PRST_CAT_ADD("vehAntiAir", "RHS_M6",                                   300,  200,  150);   // M6A2
KPLIB_PRST_CAT_END("vehAntiAir");

// Artillery vehicles
KPLIB_PRST_CAT_BEGIN("vehArty");
KPLIB_PRST_CAT_ADD("vehArty", "rhsusf_m109d_usarmy",                        300,  1200,  120);   // М109А6
KPLIB_PRST_CAT_ADD("vehArty", "rhsusf_M142_usarmy_D",                        150,  1700,  90);   // M142 HIMARS
KPLIB_PRST_CAT_END("vehArty");

// Transport Helicopters
KPLIB_PRST_CAT_BEGIN("heliTrans");
KPLIB_PRST_CAT_ADD("heliTrans", "RHS_MELB_MH6M",                               250,  0,  150);   // MH-6M Little Bird
KPLIB_PRST_CAT_ADD("heliTrans", "RHS_UH60M_MEV2_d",                            250,  0,  150);   // UH-60M MEV
KPLIB_PRST_CAT_ADD("heliTrans", "RHS_CH_47F_10",                             300,  120,  300);   // CH-47F
KPLIB_PRST_CAT_END("heliTrans");

// Attack Helicopters
KPLIB_PRST_CAT_BEGIN("heliAttack");
KPLIB_PRST_CAT_ADD("heliAttack", "RHS_MELB_AH6M",                            200,  100,  100);   // AH-6M Little Bird
KPLIB_PRST_CAT_ADD("heliAttack", "RHS_AH64D",                               750,  1500,  500);   // AH-64D
KPLIB_PRST_CAT_ADD("heliAttack", "vtx_MH60M_DAP",                            500,  400,  200);   // MH-60M DAP
KPLIB_PRST_CAT_END("heliAttack");

// Transport Planes
KPLIB_PRST_CAT_BEGIN("planeTrans");
KPLIB_PRST_CAT_ADD("planeTrans", "RHS_C130J_Cargo",                            750,  0,  500);   // C-130J (Cargo)
KPLIB_PRST_CAT_ADD("planeTrans", "RHS_C130J",                                  750,  0,  500);   // C-130J
KPLIB_PRST_CAT_END("planeTrans");

// Jets
KPLIB_PRST_CAT_BEGIN("jets");
KPLIB_PRST_CAT_ADD("jets", "RHS_A10",                                       1000,  800,  400);   // A-10A
KPLIB_PRST_CAT_END("jets");

// Static Defenses
KPLIB_PRST_CAT_BEGIN("statics");
KPLIB_PRST_CAT_ADD("statics", "RHS_M2StaticMG_MiniTripod_D",                     10,  40,  0);   // M2HB (M3)
KPLIB_PRST_CAT_ADD("statics", "RHS_M2StaticMG_D",                                10,  40,  0);   // M2HB (M3 AA)
KPLIB_PRST_CAT_ADD("statics", "B_GMG_01_F",                                      10,  60,  0);   // Mk32 GMG 20mm
KPLIB_PRST_CAT_ADD("statics", KPLIB_PRST_GETVAR("staticAa"),                     20,  80,  0);   // Static Titan Launcher (AA)
KPLIB_PRST_CAT_ADD("statics", KPLIB_PRST_GETVAR("staticAt"),                    20,  100,  0);   // Static Titan Launcher (AT)
KPLIB_PRST_CAT_ADD("statics", KPLIB_PRST_GETVAR("mortar"),                      10,  200,  0);   // Mk6 Mortar
KPLIB_PRST_CAT_ADD("statics", KPLIB_PRST_GETVAR("staticAaBig"),                100,  400,  0);   // MIM-145 Defender
KPLIB_PRST_CAT_END("statics");

// Logistic/Utility vehicles and objects
KPLIB_PRST_CAT_BEGIN("logistic");
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("arsenalBox"),              100,  200,    0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("respawnTruck"),            200,  0,  100);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("fobBox"),                  300,  500,  0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("fobTruck"),                300,  500,  75);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("storageSmall"),              0,  0,  0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("storageLarge"),              0,  0,  0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("logiBuilding"),            250,  0,  0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("airBuilding"),            1000,  0,  0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("slotHeli"),                250,  0,  0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("slotJet"),                 500,  0,  0);
KPLIB_PRST_CAT_ADD("logistic", KPLIB_PRST_GETVAR("staticAaBigRadar"),        250,  0,  0);    // AN/MPQ-105 Radar
KPLIB_PRST_CAT_ADD("logistic", "B_Truck_01_Repair_F",                        325,  0,  75);    // HEMTT Repair
KPLIB_PRST_CAT_ADD("logistic", "B_Truck_01_fuel_F",                          125,  0,  275);    // HEMTT Fuel
KPLIB_PRST_CAT_ADD("logistic", "B_Truck_01_ammo_F",                          125,  200,  75);    // HEMTT Ammo
KPLIB_PRST_CAT_ADD("logistic", "B_Slingload_01_Repair_F",                    275,  0,  0);    // Huron Repair Container
KPLIB_PRST_CAT_ADD("logistic", "B_Slingload_01_Fuel_F",                       75,  0,  200);    // Huron Fuel Container
KPLIB_PRST_CAT_ADD("logistic", "B_Slingload_01_Ammo_F",                       75,  200,  0);    // Huron Ammo Container
KPLIB_PRST_CAT_END("logistic");

// Decorative Objects
KPLIB_PRST_CAT_BEGIN("deco");
KPLIB_PRST_CAT_ADD("deco", "Land_Cargo_House_V1_F",                            0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_Cargo_Patrol_V1_F",                           0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_Cargo_Tower_V1_F",                            0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Flag_NATO_F",                                      0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Flag_US_F",                                        0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Flag_UK_F",                                        0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Flag_White_F",                                     0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_Medevac_house_V1_F",                          0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Land_Medevac_HQ_V1_F",                             0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "Flag_RedCrystal_F",                                0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "CamoNet_BLUFOR_F",                                 0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "CamoNet_BLUFOR_open_F",                            0,    0,    0);
KPLIB_PRST_CAT_ADD("deco", "CamoNet_BLUFOR_big_F",                             0,    0,    0);
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
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "rhsusf_m1a2sep1d_usarmy";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "rhsusf_m1a2sep1tuskid_usarmy";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "RHS_M2A3_BUSKI";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "rhsusf_m109d_usarmy";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "rhsusf_M142_usarmy_D";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "RHS_M119_D";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "RHS_AH64D";
(KPLIB_PRST_GETVAR("lockedVehPl")) pushBack "RHS_A10";


/*-------------------------------
    !!! DO NOT EDIT BELOW !!!
-------------------------------*/

// Preset was properly parsed, if this is not set player will be informed about errors
KPLIB_validationNamespace setVariable [KPLIB_PRST_VAR("checked"), true];

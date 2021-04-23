/*
    File: cup_chdkz.sqf
    Author: Eogos - https://github.com/Eogos
    Date: 2019-07-20
    Last Update: 2020-05-15
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        CUP ChDKZ enemy preset.

    Needed Mods:
        - CUP Units
        - CUP Vehicles
        - CUP Weapons

    Optional Mods:
        - None
*/

// Enemy infantry classes
KPLIB_o_officer = "SpecLib_O_ChDKZ_officer_F";                     // Officer
KPLIB_o_squadLeader = "SpecLib_O_ChDKZ_Soldier_SL_F";                // Squad Leader
KPLIB_o_teamLeader = "SpecLib_O_ChDKZ_Soldier_SL_F";                 // Team Leader
KPLIB_o_sentry = "SpecLib_O_ChDKZ_Soldier_02_F";             // Rifleman (Lite)
KPLIB_o_rifleman = "SpecLib_O_ChDKZ_Soldier_01_F";                    // Rifleman
KPLIB_o_riflemanLAT = "SpecLib_O_ChDKZ_Soldier_LAT_F";              // Rifleman (LAT)
KPLIB_o_grenadier = "SpecLib_O_ChDKZ_Soldier_GL_F";                   // Grenadier
KPLIB_o_machinegunner = "SpecLib_O_ChDKZ_Soldier_AR_F";                // Autorifleman
KPLIB_o_heavyGunner = "SpecLib_O_ChDKZ_Soldier_MG_F";                // Heavy Gunner
KPLIB_o_marksman = "SpecLib_O_ChDKZ_Soldier_M_F";                    // Marksman
KPLIB_o_sharpshooter = "SpecLib_O_ChDKZ_Soldier_M_F";                // Sharpshooter
KPLIB_o_sniper = "SpecLib_O_ChDKZ_Soldier_M_F";                      // Sniper
KPLIB_o_atSpecialist = "SpecLib_O_ChDKZ_Soldier_AT_F";               // AT Specialist
KPLIB_o_aaSpecialist = "SpecLib_O_ChDKZ_Soldier_AA_F";               // AA Specialist
KPLIB_o_medic = "SpecLib_O_ChDKZ_medic_F";                       // Medic
KPLIB_o_engineer = "SpecLib_O_ChDKZ_engineer_F";                    // Engineer
KPLIB_o_paratrooper = "SpecLib_O_ChDKZ_soldier_exp_F";                 // Paratrooper

// Enemy vehicles used by secondary objectives.
KPLIB_o_mrap = "SpecLib_O_TOYOTA_LC_HZJ79";                          // UAZ
KPLIB_o_mrapArmed = "SpecLib_O_TOYOTA_LC_HZJ79_KPVT";                     // UAZ (DShKM)
KPLIB_o_transportHeli = "rhsgref_ins_Mi8amt";                 // Mi-8MT
KPLIB_o_transportTruck = "rhsgref_ins_ural";                // Ural
KPLIB_o_transportTruckAmmo = "rhsgref_ins_ural_open";            // Ural (Open) -> Has to be able to transport resource crates!
KPLIB_o_fuelTruck = "rhsgref_ins_kraz255b1_fuel";                     // Ural (Refuel)
KPLIB_o_ammoTruck = "rhsgref_ins_gaz66_ammo";                     // Ural (Ammo)
KPLIB_o_fuelContainer = "B_Slingload_01_Fuel_F";                        // Huron Fuel Container
KPLIB_o_ammoContainer = "B_Slingload_01_Ammo_F";                        // Huron Ammo Container
KPLIB_o_flag = "FlagCarrierINS";                                        // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
KPLIB_o_militiaInfantry = [
    "SpecLib_O_ChDKZ_Soldier_01_F",                                              // Farmer
    "SpecLib_O_ChDKZ_Soldier_02_F",                                            // Forester
    "SpecLib_O_ChDKZ_Soldier_AR_F",                                            // Gamekeeper
    "SpecLib_O_ChDKZ_officer_F",                                                // Local
    "SpecLib_O_ChDKZ_Soldier_M_F",                                              // Villager
    "SpecLib_O_ChDKZ_Soldier_LAT_F"                                             // Woodman
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
KPLIB_o_militiaVehicles = [
    "SpecLib_O_TOYOTA_LC_HZJ79",
    "SpecLib_O_TOYOTA_LC_HZJ79_KPVT",
    "rhsgref_ins_uaz",
    "rhsgref_ins_uaz_dshkm"
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
KPLIB_o_armyVehicles = [
    "SpecLib_O_TOYOTA_LC_HZJ79_KPVT",
    "SpecLib_O_TOYOTA_LC_HZJ79_ZU23",
    "rhsgref_ins_uaz_ags",
    "rhsgref_ins_uaz_dshkm",
    "rhsgref_ins_uaz_spg9",
    "rhsgref_ins_btr60",                                                // BTR-60PB
    "rhsgref_ins_btr60",                                                // BTR-60PB
    "rhsgref_ins_btr60",                                                // BTR-60PB
    "rhsgref_ins_btr60",                                                // BTR-60PB
    "rhsgref_ins_btr70",                                                // BTR-70
    "rhsgref_ins_bmp2",                                                 // BMP-2
    "rhsgref_ins_bmp2",                                                 // BMP-2
    "rhsgref_ins_bmp2",                                                 // BMP-2
    "rhsgref_ins_zsu234",                                                // ZSU-23-4
    "rhsgref_ins_t72ba",                                                  // T-55
    "rhsgref_ins_t72ba",                                                  // T-55
    "rhsgref_ins_t72ba",                                                  // T-55
    "rhsgref_ins_t72bc",                                                  // T-72
    "rhsgref_ins_t72bc"                                                   // T-72
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
KPLIB_o_armyVehiclesLight = [
    "SpecLib_O_TOYOTA_LC_HZJ79_KPVT",                                               // UAZ (DShKM)
    "SpecLib_O_TOYOTA_LC_HZJ79_ZU23",                                           // Datsun 620 Pickup (AA)
    "rhsgref_BRDM2_ins",                                                // BRDM-2
    "rhsgref_ins_gaz66_zu23",                                            // Ural (ZU-23)
    "rhsgref_ins_btr60"                                                 // BTR-60PB
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehicles = [
    "SpecLib_O_TOYOTA_LC_HZJ79_KPVT",                                               // UAZ (DShKM)
    "SpecLib_O_TOYOTA_LC_HZJ79_ZU23",                                               // UAZ (AA)
    "rhsgref_ins_uaz_ags",                                            // UAZ (AGS-30)
    "rhsgref_ins_uaz_spg9",                                             // UAZ (SPG-9)
    "rhsgref_ins_btr60",                                                // BTR-60PB
    "rhsgref_ins_btr60",                                                // BTR-60PB
    "rhsgref_ins_btr60",                                                // BTR-60PB
    "rhsgref_ins_btr60",                                                // BTR-60PB
    "rhsgref_ins_btr70",                                                // BTR-80
    "rhsgref_ins_bmp2",                                                 // BMP-2
    "rhsgref_ins_bmp2",                                                 // BMP-2
    "rhsgref_ins_bmp2",                                                 // BMP-2
    "rhsgref_ins_zsu234",                                                // ZSU-23-4
    "rhsgref_ins_t72ba",                                                  // T-55
    "rhsgref_ins_t72ba",                                                  // T-55
    "rhsgref_ins_t72ba",                                                  // T-55
    "rhsgref_ins_t72bc",                                                  // T-72
    "rhsgref_ins_t72bc",                                                   // T-72
    "rhsgref_ins_Mi8amt",                                                  // Mi-8MT
    "rhsgref_ins_Mi8amt"                                                   // Mi-8MT
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehiclesLight = [
    "rhsgref_ins_uaz_dshkm",                                               // UAZ (DShKM)
    "SpecLib_O_TOYOTA_LC_HZJ79_ZU23",                                           // Datsun 620 Pickup (AA)
    "rhsgref_BRDM2_ins",                                                // BRDM-2
    "rhsgref_ins_gaz66_zu23",                                            // Ural (ZU-23)
    "rhsgref_ins_t72ba",                                                  // T-55
    "rhsgref_ins_btr60"                                                 // BTR-60PB
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
KPLIB_o_troopTransports = [
    "rhsgref_ins_btr60",                                                // BTR-60PB
    "rhsgref_ins_btr70",                                                // BTR-80
    "rhsgref_ins_bmp2",                                                 // BMP-2
    "rhsgref_ins_Mi8amt"                                                   // Mi-8MT
];

// Enemy rotary-wings that will need to spawn in flight.
KPLIB_o_helicopters = [
    "rhsgref_ins_Mi8amt"                                                   // Mi-8MT
];

// Enemy fixed-wings that will need to spawn in the air.
KPLIB_o_planes = [
    "rhsgref_cdf_su25"                                                 // Su-25T Frogfoot
];

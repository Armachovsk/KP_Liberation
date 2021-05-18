/*
    File: aaf.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2019-05-03
    Last Update: 2020-05-15
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        AAF enemy preset.

    Needed Mods:
        - Altis 90
        - GM

    Optional Mods:
        - None
*/

// Enemy infantry classes
KPLIB_o_officer = "AAFGM_soldier_Officer";                                // Officer
KPLIB_o_squadLeader = "AAFGM_Soldier_SL";                                 // Squad Leader
KPLIB_o_teamLeader = "AAFGM_soldier_TL";                                  // Team Leader
KPLIB_o_sentry = "AAFGM_soldier";                                         // Rifleman (Guard)
KPLIB_o_rifleman = "AAFGM_soldier";                                       // Rifleman
KPLIB_o_riflemanLAT = "AAFGM_soldier_LAT";                                // Rifleman (LAT)
KPLIB_o_grenadier = "AAFGM_soldier_Grenadier";                            // Grenadier
KPLIB_o_machinegunner = "AAFGM_soldier_AR";                               // Autorifleman
KPLIB_o_heavyGunner = "AAFGM_soldier_MG";                                 // Heavy Gunner
KPLIB_o_marksman = "AAFGM_soldier_M";                                     // Marksman
KPLIB_o_sharpshooter = "AAFGM_Soldier_M";                                 // Sharpshooter
KPLIB_o_sniper = "AAFGM_Soldier_M";                                       // Sniper
KPLIB_o_atSpecialist = "AAFGM_soldier_AT";                                // AT Specialist
KPLIB_o_aaSpecialist = "AAFGM_soldier_AA";                                // AA Specialist
KPLIB_o_medic = "AAFGM_soldier_Medic";                                    // Combat Life Saver
KPLIB_o_engineer = "AAFGM_Soldier_Repair";                                // Engineer
KPLIB_o_paratrooper = "AAFGM_soldier_Para";                               // Paratrooper

// Enemy vehicles used by secondary objectives.
KPLIB_o_mrap = "gmx_aaf_iltis_cargo_wdl";                                 // Iltis
KPLIB_o_mrapArmed = "gmx_aaf_iltis_mg3_wdl";                              // Iltis (HMG)
KPLIB_o_transportHeli = "gmx_aaf_ch53g_wdl";                              // CH53G
KPLIB_o_transportTruck = "gmx_aaf_kat1_451_cargo_wdl";                    // KAT1 Transport (Covered)
KPLIB_o_transportTruckAmmo = "gmx_aaf_kat1_451_container_wdl";            // KAT1 Flatbed (Covered) -> Has to be able to transport resource crates!
KPLIB_o_fuelTruck = "gmx_aaf_kat1_451_refuel_wdl";                        // KAT1 Fuel
KPLIB_o_ammoTruck = "gmx_aaf_kat1_451_reammo_wdl";                        // KAT1 Ammo
KPLIB_o_fuelContainer = "B_Slingload_01_Fuel_F";                          // Huron Fuel Pod
KPLIB_o_ammoContainer = "B_Slingload_01_Ammo_F";                          // Huron Ammo Pod
KPLIB_o_flag = "Flag_AAF_F";                                              // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
KPLIB_o_militiaInfantry = [
    "AAFGM_soldier",                                                      // Rifleman
    "AAFGM_soldier",                                                      // Rifleman
    "AAFGM_soldier_LAT",                                                  // Rifleman (LAT)
    "AAFGM_soldier_LAT",                                                  // Rifleman (LAT)
    "AAFGM_soldier_AT",                                                   // AT Specialist
    "AAFGM_soldier_AR",                                                   // Autorifleman
    "AAFGM_Soldier_M",                                                    // Marksman
    "AAFGM_soldier_Medic",                                                // Medic
    "AAFGM_Soldier_Repair"                                                // Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
KPLIB_o_militiaVehicles = [
    "gmx_aaf_iltis_cargo_wdl",                                            // Iltis
    "gmx_aaf_iltis_cargo_wdl",                                            // Iltis
    "gmx_aaf_iltis_milan_wdl",                                            // Iltis (ATGM)
    "gmx_aaf_m113a2dk_wdl",                                               // M113A1DK
    "gmx_aaf_luchsa2_wdl",                                                // Luchs A2
    "gmx_aaf_luchsa2_wdl",                                                // Luchs A2
    "gmx_aaf_m113a1g_apc_milan_wdl"                                       // M113A1G (ATGM)
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
KPLIB_o_armyVehicles = [
    "gmx_aaf_iltis_mg3_wdl",                                              // Iltis (HMG)
    "gmx_aaf_iltis_mg3_wdl",                                              // Iltis (HMG)
    "gmx_aaf_iltis_milan_wdl",                                            // Iltis (ATGM)
    "gmx_aaf_iltis_milan_wdl",                                            // Iltis (ATGM)
    "gmx_aaf_m113a1dk_apc_wdl",                                           // M113A1DK (HMG)
    "gmx_aaf_m113a1dk_apc_wdl",                                           // M113A1DK (HMG)
    "gmx_aaf_marder1a2_wdl",                                              // Marder 1A2
    "gmx_aaf_marder1a2_wdl",                                              // Marder 1A2
    "gmx_aaf_gepard1a1_wdl",                                              // Gepard 1A1 (AA)
    "gmx_aaf_gepard1a1_wdl",                                              // Gepard 1A1 (AA)
    "gmx_aaf_leopard1a5_wdl",                                             // Leopard 1A5
    "gmx_aaf_leopard1a3_wdl",                                             // Leopard 1A3
    "gmx_aaf_luchsa2_wdl",                                                // Luchs A2
    "gmx_aaf_luchsa2_wdl",                                                // Luchs A2
    "gmx_aaf_m113a1g_apc_milan_wdl"                                       // M113A1G (ATGM)
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
KPLIB_o_armyVehiclesLight = [
    "gmx_aaf_fuchsa0_command_wdl",                                        // Fuchs (HMG)
    "gmx_aaf_fuchsa0_reconnaissance_wdl",                                 // Fuchs (ATGM)
    "gmx_aaf_luchsa2_wdl",                                                // Luchs A2
    "gmx_aaf_marder1a2_wdl",                                              // Marder 1A2
    "gmx_aaf_m113a1dk_apc_wdl",                                           // M113A1DK (HMG)
    "gmx_aaf_m113a1dk_apc_wdl",                                           // M113A1DK (HMG)
    "gmx_aaf_m113a1g_apc_milan_wdl"                                       // M113A1G (ATGM)
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehicles = [
    "gmx_aaf_fuchsa0_command_wdl",                                        // Fuchs (HMG)
    "gmx_aaf_fuchsa0_command_wdl",                                        // Fuchs (HMG)
    "gmx_aaf_fuchsa0_command_wdl",                                        // Fuchs (HMG)
    "gmx_aaf_fuchsa0_reconnaissance_wdl",                                 // Fuchs (ATGM)
    "gmx_aaf_u1300l_cargo_wdl",                                           // u1300l Transport
    "gmx_aaf_kat1_451_cargo_wdl",                                         // Kat1
    "gmx_aaf_marder1a2_wdl",                                              // Marder 1A2
    "gmx_aaf_marder1a2_wdl",                                              // Marder 1A2
    "gmx_aaf_gepard1a1_wdl",                                              // Gepard 1A1 (AA)
    "gmx_aaf_gepard1a1_wdl",                                              // Gepard 1A1 (AA)
    "gmx_aaf_leopard1a1a1_wdl",                                           // Leopard 1A1
    "gmx_aaf_leopard1a1a1_wdl",                                           // Leopard 1A1
    "gmx_aaf_leopard1a5_wdl",                                             // Leopard 1A5
    "gmx_aaf_leopard1a5_wdl",                                             // Leopard 1A5
    "gmx_aaf_luchsa2_wdl",                                                // Luchs A2
    "gmx_aaf_luchsa2_wdl",                                                // Luchs A2
    "gmx_aaf_m113a1g_apc_milan_wdl"                                       // M113A1G (ATGM)
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehiclesLight = [
    "gmx_aaf_fuchsa0_command_wdl",                                        // Fuchs (HMG)
    "gmx_aaf_fuchsa0_command_wdl",                                        // Fuchs (HMG)
    "gmx_aaf_fuchsa0_reconnaissance_wdl",                                 // Fuchs (ATGM)
    "gmx_aaf_m113a2dk_wdl",                                               // M113A1DK
    "gmx_aaf_marder1a2_wdl",                                              // Marder 1A2
    "gmx_aaf_m113a2dk_wdl",                                               // M113A1DK
    "gmx_aaf_m113a2dk_wdl",                                               // M113A1DK
    "gmx_aaf_m113a1g_apc_milan_wdl"                                       // M113A1G (ATGM)
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.	*/
KPLIB_o_troopTransports = [
    "gmx_aaf_ch53g_wdl"
];

// Enemy rotary-wings that will need to spawn in flight.
KPLIB_o_helicopters = [
    "gmx_aaf_ch53g_wdl",
    "gmx_aaf_bo105p_pah1_wdl",
    "gmx_aaf_bo105p_pah1a1_wdl"
];

// Enemy fixed-wings that will need to spawn in the air.
KPLIB_o_planes = [
    "gmx_aaf_do28d2_wdl",
    "AAFGM_L159"
];

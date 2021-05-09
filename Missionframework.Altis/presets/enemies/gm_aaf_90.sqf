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
KPLIB_o_officer = "AAFGM_Officer";                                        // Officer
KPLIB_o_squadLeader = "AAFGM_Soldier_SL";                                 // Squad Leader
KPLIB_o_teamLeader = "AAFGM_Soldier_TL";                                  // Team Leader
KPLIB_o_sentry = "AAFGM_Soldier_Lite";                                    // Rifleman (Lite)
KPLIB_o_rifleman = "AAFGM_soldier";                                       // Rifleman
KPLIB_o_riflemanLAT = "AFGM_Soldier_AT_Lite";                               // Rifleman (LAT)
KPLIB_o_grenadier = "AAFGM_Soldier_TL";                                   // Grenadier
KPLIB_o_machinegunner = "AAFGM_Soldier_AR";                               // Autorifleman
KPLIB_o_heavyGunner = "AAFGM_Soldier_AR";                                 // Heavy Gunner
KPLIB_o_marksman = "AAFGM_Soldier_M";                                     // Marksman
KPLIB_o_sharpshooter = "AAFGM_Soldier_M";                                 // Sharpshooter
KPLIB_o_sniper = "AAFGM_Soldier_M";                                    // Sniper
KPLIB_o_atSpecialist = "AFGM_Soldier_AT";                                // AT Specialist
KPLIB_o_aaSpecialist = "AAFGM_soldier_AA";                                // AA Specialist
KPLIB_o_medic = "AAFGM_medic";                                            // Combat Life Saver
KPLIB_o_engineer = "AAFGM_Soldier_Repair";                                      // Engineer
KPLIB_o_paratrooper = "AAFGM_soldier_Para";                                 // Paratrooper

// Enemy vehicles used by secondary objectives.
KPLIB_o_mrap = "ACM_AAFGM_Iltis";                                           // M-ATV
KPLIB_o_mrapArmed = "ACM_AAFGM_Fuchs_Recon";                                  // MATV (HMG)
KPLIB_o_transportHeli = "ACM_AAFGM_PAH1";                                    // Merlin
KPLIB_o_transportTruck = "ACM_AAFGM_Kat1_451_Cargo";                        // Kamaz Transport (Covered)
KPLIB_o_transportTruckAmmo = "ACM_AAFGM_Kat1_451_Flatbed";                  // Kamaz Transport (Open) -> Has to be able to transport resource crates!
KPLIB_o_fuelTruck = "ACM_AAFGM_Kat1_451_Fuel";                                // Kamaz Fuel
KPLIB_o_ammoTruck = "ACM_AAFGM_Kat1_451_Ammo";                                // Kamz Ammo
KPLIB_o_fuelContainer = "B_Slingload_01_Fuel_F";                        // Huron Fuel Pod
KPLIB_o_ammoContainer = "B_Slingload_01_Ammo_F";                        // Huron Ammo Pod
KPLIB_o_flag = "Flag_AAF_F";                                            // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
KPLIB_o_militiaInfantry = [
    "AAFGM_soldier_MP",                                                 // Rifleman (Lite)
    "AAFGM_soldier_MP",                                                 // Rifleman (Lite)
    "AAFGM_soldier_MP_lite",                                                      // Rifleman
    "AAFGM_soldier_MP_lite",                                                      // Rifleman
    "AFGM_Soldier_AT_Lite",                                                 // Rifleman (AT)
    "AAFGM_Soldier_AR",                                                   // Autorifleman
    "AAFGM_Soldier_M",                                                    // Marksman
    "AAFGM_medic",                                                        // Medic
    "AAFGM_Soldier_Repair"                                                      // Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
KPLIB_o_militiaVehicles = [
    "ACM_AAFGM_Motorbike",                                                 // Polaris DAGOR (XM312)
    "ACM_AAFGM_Iltis",                                                 // Polaris DAGOR (XM312)
    "ACM_AAFGM_Iltis_Milan",                                                  // MATV (HMG)
    "ACM_AAFGM_m113a1dk",                                        // SPz Pandur
    "ACM_AAFGM_Luchsa1",                                                 // Wiesel MK20
    "ACM_AAFGM_Luchsa1",                                                 // Wiesel MK20
    "ACM_AAFGM_M113_milan"                                                      // Wiesel ATGM
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
KPLIB_o_armyVehicles = [
    "ACM_AAFGM_Iltis",                                                  // M-ATV (HMG)
    "ACM_AAFGM_Iltis",                                                  // M-ATV (HMG)
    "ACM_AAFGM_Iltis",                                                  // M-ATV (GMG)
    "ACM_AAFGM_Iltis_Milan",                                                    // Polaris (Mini-Spike PZAbw)
    "ACM_AAFGM_BMP",                                        // SPz Pandur
    "ACM_AAFGM_BMP",                                        // SPz Pandur
    "ACM_AAFGM_M113a2DK",                                        // Warrior
    "ACM_AAFGM_M113a2DK",                                        // Warrior
    "ACM_AAFGM_Gepard",                                                     // Wiesel AA
    "ACM_AAFGM_M113a2DK",                                            // Bardelas
    "ACM_AAFGM_Leopard1a3a1",                                                // Leopard
    "ACM_AAFGM_Leopard1a3a1",                                                // Leopard
    "ACM_AAFGM_Luchsa1",                                     // Rooikat 120 UP
    "ACM_AAFGM_m113a1dk",                                                 // Wiesel MK20
    "ACM_AAFGM_m113a1dk",                                                 // Wiesel MK20
    "ACM_AAFGM_M113_milan"                                                      // Wiesel ATGM
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
KPLIB_o_armyVehiclesLight = [
    "ACM_AAFGM_Fuchs_Recon",                                                  // M-ATV (HMG)
    "ACM_AAFGM_Fuchs_Command",                                                  // M-ATV (HMG)
    "ACM_AAFGM_M113_milan",                                                    // Polaris DAGOR (Mini-Spike PZAbw)
    "ACM_AAFGM_Luchsa1",                                        // SPz Pandur
    "ACM_AAFGM_BMP",                                        // Warrior
    "ACM_AAFGM_M113a2DK",                                                 // Wiesel MK20
    "ACM_AAFGM_M113a2DK",                                                 // Wiesel MK20
    "ACM_AAFGM_M113_milan"                                                      // Wiesel ATGM
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehicles = [
    "ACM_AAFGM_Fuchs_Command",                                            // M-ATV (HMG)
    "ACM_AAFGM_Fuchs_Command",                                            // M-ATV (GMG)
    "ACM_AAFGM_Fuchs_Command",                                            // M-ATV (GMG)
    "ACM_AAFGM_M113_milan",                                               // Polaris DAGOR (Mini-Spike PZAbw)
    "ACM_AAFGM_Kat1_451_Flatbed",                                         // Kamaz Transport
    "ACM_AAFGM_Kat1_451_Cargo",                                           // Kamaz Transport (Covered)
    "ACM_AAFGM_BMP",                                                      // Warrior
    "ACM_AAFGM_BMP",                                                      // Warrior
    "ACM_AAFGM_Gepard",                                                   // Wiesel AA
    "ACM_AAFGM_Gepard",                                                   // Bardelas
    "ACM_AAFGM_Leopard1a3a1",                                             // Leopard
    "ACM_AAFGM_Leopard1a3a1",                                             // Leopard
    "ACM_AAFGM_Leopard1a3a1",                                             // Leopard
    "ACM_AAFGM_Leopard1a5",                                               // Merkava Mk IV LIC
    "ACM_AAFGM_PAH1_Att",                                                 // Wildcat (Armed)
    "ACM_AAFGM_PAH1_Att",                                                 // Wildcat (Armed)
    "ACM_AAFGM_ch53g",                                                    // Merlin
    "ACM_AAFGM_PAH1_Att",                                                 // RAH-66 Comanche
    "ACM_AAFGM_m113a1dk",                                                 // Wiesel MK20
    "ACM_AAFGM_m113a1dk",                                                 // Wiesel MK20
    "ACM_AAFGM_M113_milan"                                                // Wiesel ATGM
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehiclesLight = [
    "ACM_AAFGM_Fuchs_Recon",                                              // M-ATV (HMG)
    "ACM_AAFGM_Fuchs_Command",                                            // M-ATV (HMG)
    "ACM_AAFGM_M113_milan",                                               // Polaris DAGOR (Mini-Spike PZAbw)
    "ACM_AAFGM_Luchsa1",                                                  // SPz Pandur
    "ACM_AAFGM_BMP",                                                      // Warrior
    "ACM_AAFGM_M113a2DK",                                                 // Wiesel MK20
    "ACM_AAFGM_M113a2DK",                                                 // Wiesel MK20
    "ACM_AAFGM_M113_milan",                                               // Wiesel ATGM
    "ACM_AAFGM_PAH1"
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.	*/
KPLIB_o_troopTransports = [
    "ACM_AAFGM_ch53g"
];

// Enemy rotary-wings that will need to spawn in flight.
KPLIB_o_helicopters = [
    "ACM_AAFGM_Heli_light_01_dynamicLoadout_F",
    "ACM_AAFGM_Heli_Light_01",
    "ACM_AAFGM_PAH1_Att",
    "ACM_AAFGM_PAH1",
    "ACM_AAFGM_VBH1Swoop"
];

// Enemy fixed-wings that will need to spawn in the air.
KPLIB_o_planes = [
    "ACM_AAFGM_do28d2",
    "ACM_AAFGM_do28d2_medevac",
    "ACM_AAFGM_Alca"
];

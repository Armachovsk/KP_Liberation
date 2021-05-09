/*
    File: rhs_afrf.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2017-10-07
    Last Update: 2020-06-03
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Armed Forces of the Russian Federation enemy preset.

    Needed Mods:
        - RHS AFRF

    Optional Mods:
        - None
*/

// Enemy infantry classes
KPLIB_o_officer = "rhsgref_tla_warlord";                                // Officer
KPLIB_o_squadLeader = "rhsgref_tla_squadleader";                        // Squad Leader
KPLIB_o_teamLeader = "rhsgref_tla_rifleman_vz58";                       // Team Leader
KPLIB_o_sentry = "rhsgref_tla_rifleman_pm63";                           // Rifleman (Lite)
KPLIB_o_rifleman = "rhsgref_tla_rifleman_M16";                          // Rifleman
KPLIB_o_riflemanLAT = "rhsgref_tla_rifleman_rpg75";                     // Rifleman (LAT)
KPLIB_o_grenadier = "rhsgref_tla_grenadier_m79";                        // Grenadier
KPLIB_o_machinegunner = "rhsgref_tla_machinegunner";                    // Autorifleman
KPLIB_o_heavyGunner = "rhsgref_tla_machinegunner_mg42";                 // Heavy Gunner
KPLIB_o_marksman = "rhsgref_tla_rifleman_m1";                           // Marksman
KPLIB_o_sharpshooter = "rhsgref_tla_rifleman_l1a1";                     // Sharpshooter
KPLIB_o_sniper = "rhsgref_tla_marksman_m14";                            // Sniper
KPLIB_o_atSpecialist = "rhsgref_tla_specialist_at";                     // AT Specialist
KPLIB_o_aaSpecialist = "rhsgref_tla_grenadier_m79";                     // AA Specialist
KPLIB_o_medic = "rhsgref_tla_medic";                                    // Combat Life Saver
KPLIB_o_engineer = "rhsgref_tla_mechanic";                              // Engineer
KPLIB_o_paratrooper = "rhsgref_tla_rifleman_rpg75";                     // Paratrooper

// Enemy vehicles used by secondary objectives.
KPLIB_o_mrap = "rhsgref_tla_offroad";                                          // GAZ-233011
KPLIB_o_mrapArmed = "rhsgref_tla_offroad_armed";                                 // GAZ-233014 (Armed)
KPLIB_o_transportHeli = "RHS_Mi8mt_Cargo_vvsc";                         // Mi-8MT (Cargo)
KPLIB_o_transportTruck = "rhsgref_tla_kraz255b1_cargo_open";            // Ural-4320 Transport (Covered)
KPLIB_o_transportTruckAmmo = "rhsgref_tla_kraz255b1_cargo_open";        // Ural-4320 Transport (Open) -> Has to be able to transport resource crates!
KPLIB_o_fuelTruck = "RHS_Ural_Fuel_MSV_01";                             // Ural-4320 Fuel
KPLIB_o_ammoTruck = "rhs_gaz66_ammo_msv";                               // GAZ-66 Ammo
KPLIB_o_fuelContainer = "Land_Pod_Heli_Transport_04_fuel_F";            // Taru Fuel Pod
KPLIB_o_ammoContainer = "Land_Pod_Heli_Transport_04_ammo_F";            // Taru Ammo Pod
KPLIB_o_flag = "Flag_Syndikat_F";                                     // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
KPLIB_o_militiaInfantry = [
    "rhsgref_tla_rifleman_M16",                                             // Rifleman
    "rhsgref_tla_rifleman_M16",                                             // Rifleman
    "rhsgref_tla_rifleman_M16",                                             // Rifleman
    "rhsgref_tla_rifleman_rpg75",                                                  // Rifleman (AT)
    "rhsgref_tla_machinegunner_mg42",                                            // Autorifleman
    "rhsgref_tla_marksman_m14",                                             // Marksman
    "rhsgref_tla_medic",                                                // Medic
    "rhsgref_tla_mechanic"                                              // Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders.
KPLIB_o_militiaVehicles = [
    "gm_gc_army_p601"                                                  // GAZ-233014 (Armed)
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
KPLIB_o_armyVehicles = [
    "gm_gc_army_p601",                                                 // GAZ-233014 (Armed)
    "rhsgref_tla_offroad_armed",                                                 // GAZ-233014 (Armed)
    "gm_gc_army_brdm2",                                                    // BMP-2D
    "gm_gc_army_btr60pa",                                                    // BMP-2K
    "gm_gc_army_bmp1sp2",                                                    // BRM-1K
    "gm_gc_army_zsu234v1",                                                    // ZSU-23-4V
    "gm_gc_army_t55"                                                          // T80
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
KPLIB_o_armyVehiclesLight = [
    "rhsgref_tla_offroad_armed",                                                 // GAZ-233014 (Armed)
    "rhsgref_tla_offroad_armed",                                                 // GAZ-233014 (Armed)
    "gm_gc_army_btr60pa"                                                    // BTR-80
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehicles = [
    "rhsgref_tla_offroad_armed",                                                 // GAZ-233014 (Armed)
    "rhsgref_tla_offroad_armed",                                                 // GAZ-233014 (Armed)
    "rhsgref_tla_kraz255b1_cargo_open",                                             // Ural-4320 Transport
    "gm_gc_army_brdm2",                                                    // BMP-2D
    "gm_gc_army_btr60pa",                                                    // BMP-2K
    "gm_gc_army_bmp1sp2",                                                    // BRM-1K
    "gm_gc_army_zsu234v1",                                                    // ZSU-23-4V
    "gm_gc_army_t55",                                                          // T80
    "gm_gc_airforce_mi2urn"                                                // Mi-24P (AT)
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehiclesLight = [
    "rhsgref_tla_offroad_armed",                                                 // GAZ-233014 (Armed)
    "rhsgref_tla_offroad_armed",                                                 // GAZ-233014 (Armed)
    "rhsgref_tla_kraz255b1_cargo_open",                                             // Ural-4320 Transport
    "gm_gc_army_brdm2",                                                    // BMP-2D
    "gm_gc_army_btr60pa",                                                    // BMP-2K
    "gm_gc_army_bmp1sp2",                                                    // BRM-1K
    "gm_gc_army_zsu234v1",                                                    // ZSU-23-4V
    "gm_gc_army_t55",                                                          // T80
    "gm_gc_airforce_mi2urn"                                                // Mi-24P (AT)
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
KPLIB_o_troopTransports = [
    "rhsgref_tla_kraz255b1_cargo_open",                                             // Ural-4320 Transport
    "gm_gc_army_btr60pa",                                                    // BTR-80
    "gm_gc_airforce_mi2urn"                                             // Mi-8MT (Cargo)
];

// Enemy rotary-wings that will need to spawn in flight.
KPLIB_o_helicopters = [
    "gm_gc_airforce_mi2urn"                                             // Mi-8MT (Cargo)
];

// Enemy fixed-wings that will need to spawn in the air.
KPLIB_o_planes = [
    "gm_gc_airforce_l410t"                                                  // Su-25
];

/*
    File: custom.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2017-10-07
    Last Update: 2020-05-25
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Custom (default FIA) resistance preset.

    Needed Mods:
        - None

    Optional Mods:
        - None
*/

/* Classnames of the guerilla faction which is friendly or hostile, depending on the civil reputation
Standard loadout of the units will be replaced with a scripted one, which depends on the guerilla strength, after spawn */
KPLIB_r_units = [
    "rhsgref_hidf_autorifleman",
    "rhsgref_hidf_autorifleman_assist",
    "rhsgref_hidf_medic",
    "rhsgref_hidf_crewman",
    "rhsgref_hidf_boat_driver",
    "rhsgref_hidf_grenadier",
    "rhsgref_hidf_grenadier_m79",
    "rhsgref_hidf_machinegunner",
    "rhsgref_hidf_machinegunner_assist",
    "rhsgref_hidf_marksman",
    "rhsgref_hidf_rifleman",
    "rhsgref_hidf_rifleman_m72",
    "rhsgref_hidf_sniper",
    "rhsgref_hidf_squadleader",
    "rhsgref_hidf_teamleader"
];

// Armed vehicles
KPLIB_r_vehicles = [
    "rhsgref_hidf_m1025_m2",
    "rhsgref_hidf_m113a3_m2",
    "RHSGREF_A29B_HIDF",
    "rhs_uh1h_hidf_gunship"
];

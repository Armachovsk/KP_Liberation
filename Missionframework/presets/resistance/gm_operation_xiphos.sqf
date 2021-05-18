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
    "XIPH_soldier_TL",
    "XIPH_soldier_sl",
    "XIPH_soldier_nf",
    "Xiph_soldier_lite",
    "XIPH_soldier_at",
    "XIPH_soldier",
    "XIPH_soldier_m",
    "XIPH_soldier_medic",
    "XIPH_CBRN",
    "XIPH_soldier_ar",
    "XIPH_soldier_LATGM"
];

// Armed vehicles
KPLIB_r_vehicles = [
    "ACM_XIPH_Motorbike",
    "ACM_XIPH_Iltis",
    "ACM_XIPH_Iltis_milan",
    "ACM_XIPH_U1300_Flatbed",
    "ACM_XIPH_U1300_medic",
    "ACM_XIPH_U1300_repair",
    "ACM_XIPH_U1300_cargo"
];

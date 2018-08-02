/*
    KPLIB_fnc_adm_importSaveServer

    File: fn_adm_importSaveServer.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2018-07-29
    Last Update: 2018-08-02
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Imports the provided save data from a player to the server profile.

    Parameter(s):
        0: ARRAY - KP Liberation save data

    Returns:
    BOOL
*/

params [["_data", nil]];

if (!isNil "_data") then {
    // Toggle import switch for save skipping
    KPLIB_save_imported = true;

    // Import data to server profile
    profileNamespace setVariable [KPLIB_save_key, _data];
    saveProfileNamespace;
};

true

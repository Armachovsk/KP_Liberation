/*
    KP LIBERATION MODULE FUNCTIONS

    File: functions.hpp
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2019-02-02
    Last Update: 2019-02-18
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        Defines for all functions, which are brought by this module.
*/

class resistance {
    file = "modules\spec_resistance\fnc";

    // Loads module specific data from the save
    class resistance_loadData {};

    // Module post initialization
    class resistance_postInit {
        postInit = 1;
    };

    // Module pre initialization
    class resistance_preInit {
        preInit = 1;
    };

    // Saves module specific data for the save
    class resistance_saveData {};

    // CBA Settings for this module
    class resistance_settings {};

    class resistance_getTier {};

    class resistance_crGetMulti {};

    class resistance_changeCR {};

    class resistance_handleKilled {};

    class resistance_isCivVeh {};

    class resistance_handleCivKill {};

    class resistance_handleResistanceKill {};

    class resistance_civRepGlobalMsg {};

    class resistance_handleSector {};

    class resistance_handleGuerilla {};

    class resistance_handleCiv {};

    class resistance_handleIED {};

    class resistance_spawnCiv {};

    class resistance_addCivWaypoints {};

    class resistance_spawnGuerillaGroup {};
};

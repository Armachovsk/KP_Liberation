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

class first_supply {
    file = "modules\spec_first_supply\fnc";

    // Loads module specific data from the save
    class first_supply_loadData {};

    // Module post initialization
    class first_supply_postInit {
        postInit = 1;
    };

    // Module pre initialization
    class first_supply_preInit {
        preInit = 1;
    };

    // Saves module specific data for the save
    class first_supply_saveData {};

    // CBA Settings for this module
    class first_supply_settings {};
};

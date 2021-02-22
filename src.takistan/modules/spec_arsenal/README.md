# KP Liberation Module Description

## Arsenal Module

The arsenal module provides the arsenal dialog and several functions.
It defines the arsenal items and gives the ability to access the arsenal, define default loadouts and copy loadouts from other players.

### Dependencies

-   Common

### Consumed events

**arsenalOpened** (client side)
Saves the players backpack to ensure a correct search for blacklisted items

**arsenalClosed** (client side)
Calls SPEC_fnc_arsenal_checkGear to search the player inventory for blacklisted items

**ace_arsenal_displayOpened** (client side)
Saves the players backpack to ensure a correct search for blacklisted items

**ace_arsenal_displayClosed** (client side)
Calls SPEC_fnc_arsenal_checkGear to search the player inventory for blacklisted items

**KPLIB_player_redeploy** (client side)
Calls SPEC_fnc_arsenal_checkGear to search the player inventory for blacklisted items

### Emitted events

**KPLIB_arsenal_newLists** (server side)
Emitted when the arsenal white- and blacklist are (re)initialized

### Functions

-   SPEC_fnc_arsenal_applyLoadout

    _Applies the selected loadout to the player._

-   SPEC_fnc_arsenal_checkGear

    _Checks the players gear for blacklisted items and report these items._

-   SPEC_fnc_arsenal_copyLoadout

    _Copies the loadout from selected player._

-   SPEC_fnc_arsenal_fillArsenal

    _Initializes the virtual arsenal._

-   SPEC_fnc_arsenal_getNearPlayers

    _Lists all near players in a predefined radius._

-   SPEC_fnc_arsenal_openArsenal

    _Opens the arsenal dependent on the selected type._

-   SPEC_fnc_arsenal_openDialog

    _Open the arsenal dialog._

-   SPEC_fnc_arsenal_postInit

    _Module post initialization._

-   SPEC_fnc_arsenal_preInit

    _Module pre initialization._

-   SPEC_fnc_arsenal_setDefaultLoadout

    _Stores the selected loadout as default loadout._

-   SPEC_fnc_arsenal_settings

    _CBA Settings initialization for this module._

-   SPEC_fnc_arsenal_setupPlayerActions

    _Setup of actions available to players._

### Scripts

No scripts will be started by this module

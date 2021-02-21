# KP Liberation Module Description

## Permission Module

The permission module provides a dynamic permission framework with a permission overview dialog.
It contains functions to check player permissions and add new permissions to the framework.
Additionally it contains some pre defined permissions.

### Dependencies

-   Init
-   Common

### Consumed events

**KPLIB_doLoad** (server side)
Calls KPLIB_fnc_permission_loadData to process saved module data

**KPLIB_doSave** (server side)
Calls KPLIB_fnc_permission_saveData to add the module data to the save array

**KPLIB_permission_newPH** (server side)
Calls KPLIB_fnc_permission_initDefault to add the permission to the default permissions

**GetInMan** (client side)
Calls KPLIB_fnc_permission_checkVehiclePermission and checks the player permission for the entered vehicle

**SeatSwitchedMan** (client side)
Calls KPLIB_fnc_permission_checkVehiclePermission and checks the player permission for the entered vehicle

### Emitted events

**KPLIB_permission_newPH** (server side)
Emitted when a new permission handler is registered

### Functions

-   KPLIB_fnc_permission_addPermissionHandler

    _Adds a new permission to the permission system._

-   KPLIB_fnc_permission_changePermission

    _Changes the selected permission of the given player._

-   KPLIB_fnc_permission_checkPermission

    _Checks the given permission and executes the registered code._

-   KPLIB_fnc_permission_checkVehiclePermission

    _Checks the given vehicle permission and executes the registered code._

-   KPLIB_fnc_permission_ejectPlayer

    _Ejects the player and creates a hint._

-   KPLIB_fnc_permission_export

    _Export the permission list to profileNamespace._

-   KPLIB_fnc_permission_getPermission

    _Checks the given permission and returns the result._

-   KPLIB_fnc_permission_import

    _Import the permission list from profileNamespace._

-   KPLIB_fnc_permission_initDefault

    _Initializes the default permissions._

-   KPLIB_fnc_permission_loadData

    _Loads data which is bound to the this module from the given save data or initializes needed data for a new campaign._

-   KPLIB_fnc_permission_openDialog

    _Opens the permission dialog._

-   SPEC_fnc_arsenal_postInit

    _Module post initialization._

-   SPEC_fnc_arsenal_preInit

    _Module pre initialization._

-   KPLIB_fnc_permission_registerPlayer

    _Checks if the player is already registered to the permission system._

-   KPLIB_fnc_permission_resetToDefault

    _Resets all permissions to default._

-   KPLIB_fnc_permission_saveData

    _Fetches data which is bound to this module and send it to the global save data array._

-   KPLIB_fnc_permission_settings

    _CBA Settings initialization for this module._

-   KPLIB_fnc_permission_setupPermissionControls

    _Reads the player permissions and applies them to the dialog controls._

-   KPLIB_fnc_permission_setupPlayerActions

    _Initialization of actions availible to players._

### Scripts

No scripts will be started by this module

### Implemented permissions

-   Commander slot
-   Sub-Commander slot
-   Light vehicles
-   Transport vehicles
-   Heavy vehicles
-   Anti-Air vehicles
-   Artillery vehicles
-   Transport helicopter
-   Attack helicopter
-   Transport plane
-   Attack jets
-   Logistic vehicles

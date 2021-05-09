params ["_pos", "_markerToUpdate"];

if (!([_pos, 500] call SPEC_fnc_halo_restrict_findAvailableSector)) exitWith {
    _markerToUpdate setMarkerPosLocal _pos;
    _markerToUpdate setMarkerTextLocal (localize "STR_HALO_YOUCANNOTJUMPHERE");
    _markerToUpdate setMarkerColor "ColorRed";

    false
};

_markerToUpdate setMarkerPosLocal _pos;
_markerToUpdate setMarkerTextLocal (localize "STR_HALO_PARAM");
_markerToUpdate setMarkerColor "ColorGreen";

true

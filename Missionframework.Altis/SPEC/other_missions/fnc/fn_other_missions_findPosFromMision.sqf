// non capture zone player
_Select_Non_capture_city = selectRandom (KPLIB_sectors_all - KPLIB_sectors_player);
_Pos_non_capture_zone_first = getMarkerPos _Select_Non_capture_city;
_Pos_non_capture_zone = [_Pos_non_capture_zone_first, 15, 70, 10, 0, 0.9,0] call BIS_fnc_findSafePos;
_Pos_non_capture_zone

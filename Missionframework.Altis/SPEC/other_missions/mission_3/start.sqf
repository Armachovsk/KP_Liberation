_pos_misison = call SPEC_fnc_other_missions_findPosFromMision;
_pos_misison_from_pilot_arry = selectRandom KPLIB_sectors_city;
_pos_misison_from_pilot_select = getMarkerPos _pos_misison_from_pilot_arry;

[_pos_misison,"RHS_AH64D",_pos_misison_from_pilot_select,EAST,"rhsusf_army_ocp_ah64_pilot",getPos teleport_outside_3] execVM "SPEC\other_missions\mission_3\mission_1.sqf";

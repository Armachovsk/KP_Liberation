_pos_misison_first = selectRandom (KPLIB_sectors_city - KPLIB_sectors_blufor);
_pos_misison = getMarkerPos _pos_misison_first;

[
_pos_misison,
["CPC_ME_O_KAM_soldier_Officer","SpecLib_i_tk_gue_commander"],["CPC_ME_O_KAM_soldier_l1a1","CPC_ME_O_KAM_soldier","CPC_ME_O_KAM_soldier_AR","CPC_ME_O_KAM_soldier_MG"],
200,
getPos teleport_outside_3
] execVM "modules\spec_other_missions\mission_12\mission_1.sqf";
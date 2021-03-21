_pos_misison_first = selectRandom (KPLIB_sectors_city - KPLIB_sectors_blufor);
_pos_misison = getMarkerPos _pos_misison_first;
[
_pos_misison,
["SpecLib_c_tk_civ_black_brown_jacket",
"SpecLib_c_tk_civ_blue_grey_waistcoat",
"SpecLib_c_tk_civ_grey_brown_waistcoat",
"SpecLib_c_tk_civ_tan_desert_waistcoat",
"SpecLib_c_tk_civ_olive_woodland_waistcoat",
"SpecLib_c_tk_civ_cream_tricolor_waistcoat",
"SpecLib_c_tk_civ_brown_brown_jacket",
"SpecLib_c_tk_civ_white_grey_waistcoat"],
["CPC_ME_O_KAM_soldier_l1a1",
"CPC_ME_O_KAM_soldier",
"CPC_ME_O_KAM_soldier_AR",
"CPC_ME_O_KAM_soldier_MG"]
,200] execVM "modules\spec_other_missions\mission_11\mission_1.sqf";
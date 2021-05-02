/*
    File: rhs_usaf_des.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2017-12-09
    Last Update: 2020-05-25
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        RHS US Armed Forces Desert player preset.

    Needed Mods:
        - RHS USAF

    Optional Mods:
        - USAF Main Pack
        - USAF Utility Pack
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
KPLIB_b_fobBuilding = "USMC_WarfareBBarracks";                           // This is the main FOB HQ building.
KPLIB_b_fobBox = "B_Slingload_01_Cargo_F";                               // This is the FOB as a container.
KPLIB_b_fobTruck = "rhsusf_M1078A1P2_B_WD_CP_fmtv_usarmy";               // This is the FOB as a vehicle.
KPLIB_b_arsenal = "B_supplyCrate_F";                                     // This is the virtual arsenal as portable supply crates.
KPLIB_b_mobileRespawn = "rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy";     // This is the mobile respawn (and medical) truck.
KPLIB_b_potato01 = "rhsusf_CH53E_USMC_GAU21";                            // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
KPLIB_b_crewUnit = "rhsusf_usmc_marpat_wd_rifleman_m4";                  // This defines the crew for vehicles.
KPLIB_b_heliPilotUnit = "rhsusf_usmc_marpat_wd_helipilot";               // This defines the pilot for helicopters.
KPLIB_b_addHeli = "RHS_UH1Y_UNARMED";                                    // These are the additional helicopters which spawn on the USS Liberation or at Chimera base.
KPLIB_b_addBoat = "B_Boat_Transport_01_F";                               // These are the boats which spawn at the stern of the USS Liberation.
KPLIB_b_logiTruck = "rhsusf_M977A4_usarmy_wd";                           // These are the trucks which are used in the logistic convoy system.
KPLIB_b_smallStorage = "ContainmentArea_02_forest_F";                    // A small storage area for resources.
KPLIB_b_largeStorage = "ContainmentArea_01_forest_F";                    // A large storage area for resources.
KPLIB_b_logiStation = "USMC_WarfareBVehicleServicePoint";                // The building defined to unlock FOB recycling functionality.
KPLIB_b_airControl = "USMC_WarfareBAntiAirRadar";                        // The building defined to unlock FOB air vehicle functionality.
KPLIB_b_slotHeli = "Land_HelipadSquare_F";                               // The helipad used to increase the GLOBAL rotary-wing cap.
KPLIB_b_slotPlane = "Land_TentHangar_V1_F";                              // The hangar used to increase the GLOBAL fixed-wing cap.
KPLIB_b_crateSupply = "CargoNet_01_box_F";                               // This defines the supply crates, as in resources.
KPLIB_b_crateAmmo = "B_CargoNet_01_ammo_F";                              // This defines the ammunition crates.
KPLIB_b_crateFuel = "CargoNet_01_barrels_F";                             // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
KPLIB_b_infantry = [
    ["rhsusf_usmc_marpat_wd_teamleader",10,10,0],                        // Team Leader
    ["rhsusf_usmc_marpat_wd_autorifleman",10,0,0],                       // Autorifleman (M27)
    ["rhsusf_usmc_marpat_wd_autorifleman_m249",20,0,0],                  // Autorifleman
    ["rhsusf_usmc_marpat_wd_machinegunner",20,0,0],                      // Machine Gunner
    ["rhsusf_usmc_marpat_wd_rifleman_law",10,15,0],                      // Rifleman (M72)
    ["rhsusf_usmc_marpat_wd_grenadier",10,10,0],                         // Grenadier
    ["rhsusf_usmc_marpat_wd_marksman",20,0,0],                           // Marksman
    ["rhsusf_usmc_marpat_wd_smaw",10,60,0],                              // Assultman (SMAW)
    ["rhsusf_usmc_marpat_wd_stinger",10,60,0],                           // AA Specialist
    ["rhsusf_usmc_marpat_wd_javelin",10,60,0],                           // AT Missleman
    ["rhsusf_navy_marpat_wd_medic",20,0,0],                              // Corpsman
    ["rhsusf_usmc_marpat_wd_engineer",20,0,0],                           // Engineer
    ["rhsusf_usmc_marpat_wd_explosives",10,20,0],                        // EOD Tech
    ["rhsusf_usmc_marpat_wd_sniper_m107",30,0,0],                        // Sniper (M107)
    ["rhsusf_usmc_marpat_wd_combatcrewman",10,0,0],                      // Crewman
    ["rhsusf_usmc_marpat_wd_helicrew",10,0,0],                           // Helicopter Crew
    ["rhsusf_usmc_marpat_wd_helipilot",10,0,0],                          // Helicopter Pilot
    ["rhsusf_usmc_recon_marpat_wd_teamleader",15,10,0],                  // Recon Grenadier
    ["rhsusf_usmc_recon_marpat_wd_rifleman_at",15,20,0],                 // Recon Rifleman (M136)
    ["rhsusf_usmc_recon_marpat_wd_autorifleman",25,0,0],                 // Recon Autorifleman (M27)
    ["rhsusf_usmc_recon_marpat_wd_machinegunner_m249",25,0,0],           // Recon Machine Gunner
    ["rhsusf_usmc_recon_marpat_wd_marksman",25,0,0],                     // Recon Marksman
    ["rhsusf_navy_sarc_w",25,0,0]                                        // SARC Medic
];

KPLIB_b_vehLight = [
    ["rhsusf_mrzr4_d",60,0,30],                                          // MRZR
    ["rhsusf_m1151_usarmy_wd",140,0,60],                                 // M1151A1
    ["rhsusf_m1151_m2_v3_usmc_wd",140,50,60],                            // M1151A1 (MCTAGS/M2)
    ["rhsusf_m1151_mk19_v3_usmc_wd",140,80,60],                          // M1151A1 (MCTAGS/Mk19)
    ["rhsusf_m1151_m2crows_usmc_wd",140,100,60],                         // M1151A1 (CROWS/M2)
    ["rhsusf_m1151_mk19crows_usmc_wd",140,160,60],                       // M1151A1 (CROWS/Mk19)
    ["rhsusf_m1045_w_s",120,100,50],                                     // M1045A2 (M220A2)
    ["rhsusf_M1165A1_GMV_SAG2_M134D_M240_base",150,90,70],               // M1165A1 GMV (SAG-2/M134D)
    ["rhsusf_m1165a1_gmv_mk19_m240_socom_d",150,90,70],                  // M1165A1 GMV (SAG-2/Mk19)
    ["rhsusf_m1165a1_gmv_mk19_m240_socom_d",150,120,70],                 // M1165A1 GMV (SAG-2/Mk19)
    ["rhsusf_M1232_MC_M2_usmc_wd",210,50,110],                           // M1232 (MCTAGS/M2)
    ["rhsusf_M1232_MC_MK19_usmc_wd",210,80,110],                         // M1232 (MCTAGS/Mk19)
    ["rhsusf_m1245_m2crows_socom_deploy",210,100,110],                   // M1245 Deploy (CROWS/M2)
    ["rhsusf_m1245_mk19crows_socom_deploy",210,160,110],                 // M1245 Deploy (CROWS/Mk19)
    ["rhsusf_M1239_M2_socom_d",210,100,180],                             // M1239 AUV (CROWS/M2)
    ["rhsusf_M1239_MK19_socom_d",210,160,180],                           // M1239 AUV (CROWS/Mk19)
    ["rhsusf_M1084A1R_SOV_M2_D_fmtv_socom",100,50,90],                   // M1084A1R SOV (M2)
    ["rhsusf_M977A4_BKIT_usarmy_wd",140,0,180],                          // M977A4 BKIT
    ["B_Boat_Transport_01_F",40,0,20],                                   // Assault Boat
    ["rhsusf_mkvsoc",300,150,250],                                       // Mk.V SOC
    ["B_SDV_01_F",80,0,50]                                               // SDV
];

KPLIB_b_vehHeavy = [
    ["RHS_M2A3_wd",330,320,140],                                         // M2A3
    ["RHS_M2A3_BUSKI_wd",530,320,140],                                   // M2A3 (BUSK I)
    ["RHS_M6_wd",300,320,140],                                           // M6A2
    ["rhsusf_m1a2sep1wd_usarmy",550,490,450],                            // M1A2SEPv1
    ["rhsusf_m1a2sep1tuskiwd_usarmy",750,540,450],                       // M1A2SEPv1 (TUSK I)
    ["rhsusf_m1a2sep2wd_usarmy",550,540,450],                            // M1A2SEPv2
    ["rhsusf_m109_usarmy",300,1500,110],                                 // M109A6 Paladin
    ["rhsusf_M142_usarmy_WD",150,1700,90]                                // M142 HIMARS
];

KPLIB_b_vehAir = [
    ["B_UAV_01_F",50,0,10],                                              // AR-2 Darter
    ["RHS_MELB_MH6M",260,0,150],                                         // MH-6M Little Bird
    ["RHS_MELB_AH6M",260,500,150],                                       // AH-6M Little Bird
    ["RHS_UH1Y_FFAR",350,200,370],                                       // UH-1Y (FFAR)
    ["RHS_UH1Y",350,300,370],                                            // UH-1Y (FFAR/MG)
    ["RHS_AH1Z_wd",550,900,370],                                         // AH-1Z Viper
    ["rhsusf_CH53E_USMC_GAU21",550,50,750],                              // CH-53E Super Stallion (GAU-21)
    ["RHS_C130J",800,0,1320],                                            // C-130J Super Hercules
    ["RHS_A10",800,1100,850],                                            // A-10A Warthog
    ["rhsusf_f22",950,800,1200],                                         // F-22A
    ["USAF_C17",1150,0,1900],                                            // C-17 Globemaster II
    ["USAF_RQ4A",450,0,650],                                             // RQ-4A Global Hawk
    ["USAF_MQ9",290,800,460],                                            // MQ-9 Reaper
    ["USAF_AC130U",850,1300,1320]                                        // AC-130U Spooky II
];

KPLIB_b_vehStatic = [
    ["B_SearchLight",10,0,0],                                            // Searchlight
    ["RHS_M2StaticMG_MiniTripod_USMC_WD",10,50,0],                       // M2HB (M3)
    ["RHS_M2StaticMG_USMC_WD",10,50,0],                                  // M2HB (M3 AA)
    ["RHS_MK19_TriPod_USMC_WD",10,80,0],                                 // Mk19 (M3)
    ["RHS_M119_WD",60,1100,0],                                           // M119A2 Howitzer
    ["RHS_Stinger_AA_pod_USMC_WD",20,100,0],                             // FIM-92F (DMS)
    ["RHS_TOW_TriPod_USMC_WD",20,100,0],                                 // M41A4 TOW
    ["RHS_M252_USMC_WD",10,300,0],                                       // M252 Mortar
    ["B_SAM_System_03_F",100,400,0]                                      // MIM-145 Defender
];

KPLIB_b_objectsDeco = [
    ["USMC_WarfareBFieldhHospital",50,0,0],
    ["Land_PowerGenerator_F",0,0,20],
    ["Land_Fort_Watchtower",10,0,0],
    ["Land_fortified_nest_big",10,0,0],
    ["Land_HBarrierTower_F",10,0,0],
    ["Land_fortified_nest_small",5,0,0],
    ["Land_fort_rampart",5,0,0],
    ["Land_fort_artillery_nest",5,0,0],
    ["Land_HBarrierWall_corner_F",5,0,0],
    ["Land_HBarrierWall4_F",5,0,0],
    ["Land_HBarrierWall_corridor_F",5,0,0],
    ["Land_HBarrierWall6_F",5,0,0],
    ["Land_HBarrier_5_F",5,0,0],
    ["Land_HBarrier_Big_F",5,0,0],
    ["Land_CncBarrierMedium4_F",5,0,0],
    ["Land_CncWall4_F",5,0,0],
    ["Land_HBarrier_3_F",0,0,0],
    ["Land_HBarrier_1_F",0,0,0],
    ["Land_BagFence_01_round_green_F",0,0,0],
    ["Land_BagFence_01_long_green_F",0,0,0],
    ["Land_BagFence_01_short_green_F",0,0,0],
    ["Land_BagFence_01_end_green_F",0,0,0],
    ["Land_BagFence_01_corner_green_F",0,0,0],
    ["Land_CncWall1_F",0,0,0],
    ["Land_CncBarrierMedium_F",0,0,0],
    ["Land_CncBarrier_F",0,0,0],
    ["Land_CncBarrier_stripes_F",0,0,0],
    ["Wire",0,0,0],
    ["Fort_RazorWire",0,0,0],
    ["Land_CncShelter_F",0,0,0],
    ["Land_CzechHedgehog_01_new_F",0,0,0],
    ["Land_CamoNet_NATO",0,0,0],
    ["Land_CamoNetB_NATO",0,0,0],
    ["Land_CamoNetVar_NATO",0,0,0],
    ["Flag_US_F",0,0,0],
    ["Flag_NATO_F",0,0,0],
    ["Land_LampHalogen_F",0,0,0],
    ["Land_LampStreet_02_F",0,0,0],
    ["Land_LampShabby_F",0,0,0],
    ["Land_PortableLight_single_F",0,0,0],
    ["Land_PortableLight_double_F",0,0,0],
    ["Land_TentLamp_01_standing_F",0,0,0],
    ["Land_TentLamp_01_suspended_red_F",0,0,0],
    ["Land_TentLamp_01_suspended_F",0,0,0],
    ["Land_TentLamp_01_standing_red_F",0,0,0],
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["PortableHelipadLight_01_green_F",0,0,0],
    ["PortableHelipadLight_01_red_F",0,0,0],
    ["Land_CampingTable_white_F",0,0,0],
    ["Land_CampingChair_V2_white_F",0,0,0],
    ["Land_Bench_05_F",0,0,0],
    ["Land_WaterTank_F",0,0,0],
    ["Land_WaterTank_03_F",0,0,0],
    ["Land_ClutterCutter_large_F",0,0,0]
];

KPLIB_b_vehSupport = [
    [KPLIB_b_arsenal,0,200,0],
    [KPLIB_b_mobileRespawn,500,0,90],
    [KPLIB_b_fobBox,750,700,700],
    [KPLIB_b_fobTruck,850,700,790],
    [KPLIB_b_smallStorage,0,0,0],
    [KPLIB_b_largeStorage,0,0,0],
    [KPLIB_b_logiStation,350,0,0],
    [KPLIB_b_airControl,900,0,0],
    [KPLIB_b_slotHeli,300,0,0],
    [KPLIB_b_slotPlane,600,0,0],
    ["ACE_medicalSupplyCrate_advanced",5,0,0],
    ["ACE_Box_82mm_Mo_HE",0,40,0],
    ["ACE_Box_82mm_Mo_Smoke",0,10,0],
    ["ACE_Box_82mm_Mo_Illum",0,10,0],
    ["ACE_Wheel",10,0,0],
    ["ACE_Track",10,0,0],
    ["rhsusf_stryker_m1132_m2_wd",320,100,110],                         // M1132 Stryker (SMP/M2)
    ["rhsusf_M977A4_AMMO_BKIT_usarmy_wd",150,300,180],                  // M977A4-B (Ammo)
    ["rhsusf_M977A4_AMMO_usarmy_wd",100,300,180],                       // M977A4 (Ammo)
    ["rhsusf_M978A4_BKIT_usarmy_wd",150,0,480],                         // M978A4-B (Fuel)
    ["rhsusf_M978A4_usarmy_wd",100,0,480],                              // M978A4 (Fuel)
    ["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",450,0,180],                  // M977A4-B (Repair)
    ["rhsusf_M977A4_REPAIR_usarmy_wd",400,0,180],                       // M977A4 (Repair)
    ["B_Slingload_01_Repair_F",350,0,0],                                // CH-47F (Repair Container)
    ["B_Slingload_01_Fuel_F",50,0,300],                                 // CH-47F (Fuel Container)
    ["B_Slingload_01_Ammo_F",50,300,0]                                  // CH-47F (Ammo Container)
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
KPLIB_b_squadLight = [
    "rhsusf_usmc_marpat_wd_teamleader",
    "rhsusf_usmc_marpat_wd_autorifleman_m249",
    "rhsusf_usmc_marpat_wd_autorifleman",
    "rhsusf_usmc_marpat_wd_autorifleman",
    "rhsusf_usmc_marpat_wd_rifleman_law",
    "rhsusf_usmc_marpat_wd_rifleman_law",
    "rhsusf_usmc_marpat_wd_grenadier",
    "rhsusf_usmc_marpat_wd_marksman",
    "rhsusf_usmc_marpat_wd_engineer",
    "rhsusf_navy_marpat_wd_medic"
];

// Heavy infantry squad.
KPLIB_b_squadInf = [
    "rhsusf_usmc_marpat_wd_teamleader",
    "rhsusf_usmc_marpat_wd_machinegunner",
    "rhsusf_usmc_marpat_wd_machinegunner",
    "rhsusf_usmc_marpat_wd_rifleman_law",
    "rhsusf_usmc_marpat_wd_smaw",
    "rhsusf_usmc_marpat_wd_grenadier",
    "rhsusf_usmc_marpat_wd_sniper_m107",
    "rhsusf_usmc_marpat_wd_marksman",
    "rhsusf_usmc_marpat_wd_engineer",
    "rhsusf_navy_marpat_wd_medic"
];

// AT specialists squad.
KPLIB_b_squadAT = [
    "rhsusf_usmc_marpat_wd_teamleader",
    "rhsusf_usmc_marpat_wd_autorifleman_m249",
    "rhsusf_usmc_marpat_wd_autorifleman",
    "rhsusf_usmc_marpat_wd_rifleman_law",
    "rhsusf_usmc_marpat_wd_smaw",
    "rhsusf_usmc_marpat_wd_javelin",
    "rhsusf_usmc_marpat_wd_javelin",
    "rhsusf_navy_marpat_wd_medic"
];

// AA specialists squad.
KPLIB_b_squadAA = [
    "rhsusf_usmc_marpat_wd_teamleader",
    "rhsusf_usmc_marpat_wd_autorifleman_m249",
    "rhsusf_usmc_marpat_wd_autorifleman",
    "rhsusf_usmc_marpat_wd_rifleman_law",
    "rhsusf_usmc_marpat_wd_stinger",
    "rhsusf_usmc_marpat_wd_stinger",
    "rhsusf_usmc_marpat_wd_stinger",
    "rhsusf_navy_marpat_wd_medic"
];

// Force recon squad.
KPLIB_b_squadRecon = [
    "rhsusf_usmc_recon_marpat_wd_teamleader",                           // Recon Grenadier
    "rhsusf_usmc_recon_marpat_wd_rifleman_at",                          // Recon Rifleman (M136)
    "rhsusf_usmc_recon_marpat_wd_rifleman_at",                          // Recon Rifleman (M136)
    "rhsusf_usmc_recon_marpat_wd_rifleman_at",                          // Recon Rifleman (M136)
    "rhsusf_usmc_recon_marpat_wd_autorifleman",                         // Recon Autorifleman (M27)
    "rhsusf_usmc_recon_marpat_wd_marksman",                             // Recon Marksman
    "rhsusf_usmc_recon_marpat_wd_marksman",                             // Recon Marksman
    "rhsusf_navy_sarc_w"                                                // SARC Medic
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
KPLIB_b_squadPara = [
    "rhsusf_usmc_marpat_wd_teamleader",                                 // Team Leader
    "rhsusf_usmc_marpat_wd_grenadier",                                  // Grenadier
    "rhsusf_usmc_marpat_wd_explosives",                                 // EOD Tech
    "rhsusf_usmc_marpat_wd_rifleman_law",                               // Rifleman (M72)
    "rhsusf_usmc_marpat_wd_rifleman_law",                               // Rifleman (M72)
    "rhsusf_usmc_marpat_wd_smaw",                                       // Assultman (SMAW)
    "rhsusf_usmc_marpat_wd_autorifleman_m249",                          // Autorifleman
    "rhsusf_usmc_marpat_wd_autorifleman_m249",                          // Autorifleman
    "rhsusf_usmc_marpat_wd_machinegunner",                              // Machine Gunner
    "rhsusf_navy_marpat_wd_medic"                                       // Corpsman
];

/*
    --- Vehicles to unlock ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
KPLIB_b_vehToUnlock = [
    "RHS_M2A3_wd",                                                     // M2A3
    "RHS_M2A3_BUSKI_wd",                                               // M2A3 (BUSK I)
    "rhsusf_m1a2sep1wd_usarmy",                                        // M1A2SEPv1
    "rhsusf_m1a2sep1tuskiwd_usarmy",                                   // M1A2SEPv1 (TUSK I)
    "rhsusf_m1a2sep2wd_usarmy",                                        // M1A2SEPv2
    "rhsusf_m109_usarmy",                                              // M109A6 Paladin
    "rhsusf_M142_usarmy_WD",                                           // M142 HIMARS
    "RHS_M119_WD",                                                     // M119A2 Howitzer
    "RHS_MELB_AH6M",                                                   // MH-6M Little Bird
    "RHS_AH1Z_wd",                                                     // AH-1Z Viper
    "RHS_A10",                                                         // A-10A Warthog
    "rhsusf_f22",                                                      // F-22A
    "USAF_MQ9",                                                        // MQ-9 Reaper
    "USAF_AC130U"                                                      // AC-130U Spooky II
];

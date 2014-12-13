#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Recruiten Ausgabe",
					[
						["arifle_sdar_F","Taser Rifle",2000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"Du bist kein Officer!"};
			default
			{
				["Officer Ausgabe",
					[
						["arifle_MXC_Black_F",nil,3500],
						["SMG_02_ACO_F",nil,30000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250],
						["ItemWatch",nil,450],
						["ItemMap",nil,250],
						["ItemGPS",nil,1000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,350],
						["Medikit",nil,1000],
						["Binocular",nil,450],
						["Rangefinder",nil,45000],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"Du bist kein Sergeant!"};
			default
			{
				["Sergeant Ausgabe",
					[
						["arifle_MXC_Black_F",nil,3500],
						["arifle_MX_Black_F",nil,3500],
						["srifle_DMR_01_F",nil,3500],
						["SMG_02_ACO_F",nil,30000],
						["HandGrenade_Stone","Flashbang",1700],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["30Rnd_65x39_caseless_mag",nil,130],
						["10Rnd_762x51_Mag",nil,130],
						["30Rnd_9x21_Mag",nil,250],
						["ItemWatch",nil,450],
						["ItemMap",nil,250],
						["ItemGPS",nil,1000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,350],
						["Medikit",nil,1000],
						["Binocular",nil,450],
						["Rangefinder",nil,45000],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
		case "cop_detective":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"Du bist kein Detective!"};
			default
			{
				["Detective Ausgabe",
					[
						["arifle_MXC_Black_F",nil,3500],
						["arifle_MX_Black_F",nil,3500],
						["arifle_MXM_Black_F",nil,3500],
						["srifle_DMR_01_F",nil,3500],
						["SMG_02_ACO_F",nil,30000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["30Rnd_65x39_caseless_mag",nil,130],
						["10Rnd_762x51_Mag",nil,130],
						["30Rnd_9x21_Mag",nil,250],
						["ItemWatch",nil,450],
						["ItemMap",nil,250],
						["ItemGPS",nil,1000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,350],
						["Medikit",nil,1000],
						["Binocular",nil,450],
						["Rangefinder",nil,45000],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 5): {"Du bist kein Lieutenant!"};
			default
			{
				["Lieutenant Ausgabe",
					[
						["arifle_MXC_Black_F",nil,3500],
						["arifle_MX_Black_F",nil,3500],
						["arifle_MXM_Black_F",nil,3500],
						["srifle_GM6_F",nil,3500],
						["5Rnd_127x108_Mag",nil,200],
						["srifle_EBR_F",nil,45000],
						["20Rnd_762x51_Mag",nil,500],
						["srifle_DMR_01_F",nil,3500],
						["SMG_02_ACO_F",nil,30000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["30Rnd_65x39_caseless_mag",nil,130],
						["10Rnd_762x51_Mag",nil,130],
						["30Rnd_9x21_Mag",nil,250],
						["ItemWatch",nil,450],
						["ItemMap",nil,250],
						["ItemGPS",nil,1000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,350],
						["Medikit",nil,1000],
						["Binocular",nil,450],
						["Rangefinder",nil,45000],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	case "cop_captain":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"Du bist kein Captain!"};
			default
			{
				["Captain Ausgabe",
					[
						["arifle_MXC_Black_F",nil,3500],
						["arifle_MX_Black_F",nil,3500],
						["arifle_MXM_Black_F",nil,3500],
						["srifle_GM6_F",nil,3500],
						["5Rnd_127x108_Mag",nil,200],
						["arifle_Katiba_F",nil,3500],
						["30Rnd_65x39_caseless_green",nil,200],
						["srifle_EBR_F",nil,45000],
						["20Rnd_762x51_Mag",nil,500],
						["10Rnd_762x51_Mag",nil,200],
						["srifle_DMR_01_F",nil,3500],
						["SMG_02_ACO_F",nil,30000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["30Rnd_65x39_caseless_mag",nil,130],
						["10Rnd_762x51_Mag",nil,130],
						["30Rnd_9x21_Mag",nil,250],
						["ItemWatch",nil,450],
						["ItemMap",nil,250],
						["ItemGPS",nil,1000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,350],
						["Medikit",nil,1000],
						["Binocular",nil,450],
						["Rangefinder",nil,45000],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						
						["30Rnd_65x39_caseless_green",nil,2705]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["arifle_Katiba_F",nil,800000],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,40000],
						["arifle_MX_F",nil,350000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,15000],
						["arifle_MXM_F",nil,500000],
						["arifle_MXC_F",nil,250000],
						["srifle_DMR_01_F",nil,1000000],
						["10Rnd_762x51_Mag",nil,100000],
						["hgun_Rook40_F",nil,20000],
						["hgun_Pistol_heavy_02_F",nil,25000],
						["hgun_ACPC2_F",nil,30000],
						["hgun_PDW2000_F",nil,50000],
						["optic_ACO_grn_smg",nil,2500],
						["arifle_SDAR_F",nil,35000],
						["20Rnd_556x45_UW_mag",nil,3500],
						["16Rnd_9x21_Mag",nil,5000],
						["9Rnd_45ACP_Mag",nil,5000],
						["6Rnd_45ACP_Cylinder",nil,5000],
						["30Rnd_9x21_Mag",nil,5000]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,12000],
						["hgun_Pistol_heavy_02_F",nil,15000],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,5000],
						["9Rnd_45ACP_Mag",nil,5000],
						["6Rnd_45ACP_Cylinder",nil,5000],
						["30Rnd_9x21_Mag",nil,5000]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,1500],
				["ItemGPS",nil,1000],
				["ToolKit",nil,2500],
				["FirstAidKit",nil,1500],
				["NVGoggles",nil,5000]
			]
		];
	};
	
	case "recon_1":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (__GETC__(life_rebellevel) == 0): {"Du gehörst nicht zur ReCon!"};
			default
			{
				["ReCon Prospect",
					[
						["hgun_Pistol_heavy_01_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,1000],
						["ItemWatch",nil,450],
						["ItemMap",nil,250],
						["ItemGPS",nil,1000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,350],
						["Binocular",nil,450],
						["ItemCompass",nil,450],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
		case "recon_2":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (__GETC__(life_rebellevel) < 2): {"Du hast nicht den nötigen Rang!"};
			default
			{
				["ReCon Driver",
					[
						["hgun_Pistol_heavy_01_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,1000],
						["SMG_02_F",nil,50000],
						["30Rnd_9x21_Mag",nil,5000],
						["ItemWatch",nil,450],
						["ItemMap",nil,250],
						["ItemGPS",nil,1000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,350],
						["Binocular",nil,450],
						["ItemCompass",nil,450],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	case "recon_3":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (__GETC__(life_rebellevel) < 3): {"Du hast nicht den nötigen Rang!"};
			default
			{
				["ReCon Private",
					[
						["hgun_Pistol_heavy_01_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,1000],
						["SMG_02_F",nil,50000],
						["30Rnd_9x21_Mag",nil,5000],
						["arifle_MXC_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,10000],
						["20Rnd_762x51_Mag",nil,50000],
						["30Rnd_65x39_caseless_green",nil,35000],
						["ItemWatch",nil,450],
						["ItemMap",nil,250],
						["ItemGPS",nil,1000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,350],
						["Binocular",nil,450],
						["ItemCompass",nil,450],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,2500],
						["9Rnd_45ACP_Mag",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,2500],
						["30Rnd_9x21_Mag",nil,2500],
						["optic_Holosight",nil,10000]
					]
				];
			};
		};
	};
	
		case "recon_4":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (__GETC__(life_rebellevel) < 4): {"Du hast nicht den nötigen Rang!"};
			default
			{
				["ReCon Colonel",
					[
						["arifle_MX_F",nil,150000],
						["arifle_MXM_F",nil,250000],
						["arifle_MX_SW_F",nil,200000],
						["100Rnd_65x39_caseless_mag",nil,35000],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,1000],
						["SMG_02_F",nil,50000],
						["30Rnd_9x21_Mag",nil,5000],
						["arifle_MXC_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,10000],
						["20Rnd_762x51_Mag",nil,50000],
						["30Rnd_65x39_caseless_green",nil,35000],
						["ItemWatch",nil,450],
						["ItemMap",nil,250],
						["ItemGPS",nil,1000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,350],
						["Binocular",nil,450],
						["ItemCompass",nil,450],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,2500],
						["9Rnd_45ACP_Mag",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,2500],
						["30Rnd_9x21_Mag",nil,2500],
						["optic_Holosight",nil,10000],
						["optic_Arco",nil,20000],
						["optic_Hamr",nil,20000],
						["optic_MRCO",nil,20000]
					]
				];
			};
		};
	};
	
			case "recon_5":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (__GETC__(life_rebellevel) < 5): {"Du hast nicht den nötigen Rang!"};
			default
			{
				["ReCon Major",
					[
						["srifle_EBR_F",nil,600000],
						["arifle_Katiba_F",nil,350000],
						["arifle_MX_F",nil,150000],
						["arifle_MXM_F",nil,250000],
						["arifle_MX_SW_F",nil,200000],
						["100Rnd_65x39_caseless_mag",nil,35000],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,1000],
						["SMG_02_F",nil,50000],
						["30Rnd_9x21_Mag",nil,5000],
						["arifle_MXC_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,10000],
						["20Rnd_762x51_Mag",nil,50000],
						["30Rnd_65x39_caseless_green",nil,35000],
						["ItemWatch",nil,450],
						["ItemMap",nil,250],
						["ItemGPS",nil,1000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,350],
						["Binocular",nil,450],
						["ItemCompass",nil,450],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,2500],
						["9Rnd_45ACP_Mag",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,2500],
						["30Rnd_9x21_Mag",nil,2500],
						["optic_Holosight",nil,10000],
						["optic_Arco",nil,20000],
						["optic_Hamr",nil,20000],
						["optic_MRCO",nil,20000]
					]
				];
			};
		};
	};
	
				case "recon_6":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (__GETC__(life_rebellevel) < 6): {"Du hast nicht den nötigen Rang!"};
			default
			{
				["ReCon MrX",
					[
						["launch_RPG32_F",nil,2500000],
						["RPG32_F",nil,250000],
						["LMG_Mk200_F",nil,500000],
						["200Rnd_65x39_cased_Box",nil,50000],
						["srifle_GM6_LRPS_F",nil,1500000],
						["5Rnd_127x108_Mag",nil,150000],
						["srifle_EBR_F",nil,600000],
						["arifle_Katiba_F",nil,350000],
						["arifle_MX_F",nil,150000],
						["arifle_MXM_F",nil,250000],
						["arifle_MX_SW_F",nil,200000],
						["100Rnd_65x39_caseless_mag",nil,35000],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,1000],
						["SMG_02_F",nil,50000],
						["30Rnd_9x21_Mag",nil,5000],
						["arifle_MXC_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,10000],
						["20Rnd_762x51_Mag",nil,50000],
						["30Rnd_65x39_caseless_green",nil,35000],
						["ItemWatch",nil,450],
						["ItemMap",nil,250],
						["ItemGPS",nil,1000],
						["ToolKit",nil,250],
						["FirstAidKit",nil,350],
						["Binocular",nil,450],
						["ItemCompass",nil,450],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,2500],
						["9Rnd_45ACP_Mag",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,2500],
						["30Rnd_9x21_Mag",nil,2500],
						["optic_Holosight",nil,10000],
						["optic_Arco",nil,20000],
						["optic_Hamr",nil,20000],
						["optic_MRCO",nil,20000],
						["optic_SOS",nil,30000]
					]
				];
			};
		};
	};
	
	
};

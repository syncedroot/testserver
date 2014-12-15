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
						["HandGrenade_Stone","Flashbang",1700],
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
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
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
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
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
			case (__GETC__(life_coplevel) < 3): {"Du bist kein Detective!"};
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
			case (__GETC__(life_coplevel) < 3): {"Du bist kein Lieutenant!"};
			default
			{
				["Lieutenant Ausgabe",
					[
						["arifle_MXC_Black_F",nil,3500],
						["arifle_MX_Black_F",nil,3500],
						["arifle_MXM_Black_F",nil,3500],
						["srifle_GM6_F",nil,3500],
						["5Rnd_127x108_Mag",nil,200],
						["srifle_DMR_01_F",nil,45000],
						["10Rnd_762x51_Mag",nil,200],
						["srifle_DMR_01_F",nil,3500],
						["SMG_02_ACO_F",nil,30000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
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
			case (__GETC__(life_coplevel) < 3): {"Du bist kein Captain!"};
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
						["srifle_DMR_01_F",nil,45000],
						["10Rnd_762x51_Mag",nil,200],
						["srifle_DMR_01_F",nil,3500],
						["SMG_02_ACO_F",nil,30000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
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
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275]
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
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
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
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	
		\\ ReCon Weapon Shop:
	case "recon":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (__GETC__(life_rebellevel) == 0): {"Du gehörst nicht zur ReCon!"}; <- Add this line to your shop to make it Whitelisted Only
			default
			{
				["ReCon Waffenhändler",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275]
					]
				];
			};
		};
	};
	
};

#include <macro.h>
/*
File: fn_initCop.sqf
Author: Bryan "Tonic" Boardwine


Description:
Cop Initialization file.
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};


if((__GETC__(life_copLevel)) < 1) exitWith {
["Blacklisted",FALSE,TRUE] call BIS_fnc_endMission;
sleep 35;
};


[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.


switch (__GETC__(life_coplevel)) do {
	case 1: { life_paycheck = 1500; };
	case 2: { life_paycheck = 2000; };
	case 3: { life_paycheck = 2500; };
	case 4: { life_paycheck = 3000; };
	case 5: { life_paycheck = 3500; };
	case 6: { life_paycheck = 4000; };
	case 7: { life_paycheck = 10000; };
	default { life_paycheck = 1500; };
};



[] spawn    //basic cop
{
 while {true} do
 {
  waitUntil {uniform player == "U_Rangemaster"};
  player setObjectTextureGlobal [0,"textures\U_Rangemaster_APD_Officer.paa"];
  waitUntil {uniform player != "U_Rangemaster"};
 };
};

[] spawn     //Sadsdsa
{
 while {true} do
 {
  waitUntil {uniform player == "U_BG_Guerilla2_3"};
  player setObjectTextureGlobal [0,"textures\U_BG_Guerilla2_3_APD_Sergeant.paa"];
  waitUntil {uniform player !=  "U_BG_Guerilla2_3"};
 };
};

[] spawn     //asds
{
 while {true} do
 {
  waitUntil {uniform player == "U_B_CombatUniform_mcam"};
  player setObjectTextureGlobal [0,"textures\U_B_CombatUniform_wdl_APD_Detective.paa"];
  waitUntil {uniform player !=  "U_B_CombatUniform_mcam"};
 };
};







/*#define __GETC__(var) (call var)
 
// Standard Cop Uniforms by coplevel. Create new 'if' for every coplevel you want to have a special uniform. (e.G. if(__GETC__(life_coplevel) == 1) then {... )
if (__GETC__(life_coplevel) > 0)  then {
player setObjectTextureGlobal [0, "textures\U_Rangemaster_APD_Officer.paa"]; // this is for all cops whitelisted or public.
};
 
/*if (__GETC__(life_coplevel) > 1)  then {
player setObjectTextureGlobal [0, "textures\U_BG_Guerilla2_3_APD_Sergeant.paa"]; // this is for all cops whitelisted or public.
};
 
if (__GETC__(life_coplevel) > 2)  then {
player setObjectTextureGlobal [0, "textures\U_B_CombatUniform_wdl_APD_Detective.paa"]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
};
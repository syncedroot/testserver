#include <macro.h>
/*
	File: fn_p_openMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the players virtual inventory menu
*/
if(!alive player || dialog) exitWith {}; //Prevent them from opening this for exploits while dead.
createDialog "playerSettings";
disableSerialization;

switch(playerSide) do
{
	case west: 
	{
		ctrlShow[2011,false];
	};
	
	case civilian:
	{
		ctrlShow[2012,false];
	};
	case independent:
    {
        ctrlShow[2012,false];
};
};

if(__GETC__(life_adminlevel) < 1) then
{
	ctrlShow[2020,false];
	ctrlShow[2021,false];
	ctrlShow[2024,false];
};

[] call life_fnc_p_updateMenu;

if(__GETC__(life_adminlevel) < 1) then
{
	ctrlShow[2020,false];
	ctrlShow[2021,false];
	ctrlShow[2024,false];
};



if(__GETC__(life_adminlevel) < 2) then
{
	ctrlShow[2024,false];
	ctrlShow[2401,false];
	ctrlShow[2402,false];
	ctrlShow[2403,false];
	ctrlShow[2404,false];
	ctrlShow[2406,false];
	ctrlShow[2410,false];
	ctrlShow[2411,false];
	ctrlShow[2412,false];
	ctrlShow[2413,false];
	

};

[] call life_fnc_p_updateMenu;

if(__GETC__(life_adminlevel) < 2) then
{
	ctrlShow[2024,false];
	ctrlShow[2401,false];
	ctrlShow[2402,false];
	ctrlShow[2403,false];
	ctrlShow[2404,false];
	ctrlShow[2406,false];
	ctrlShow[2410,false];
	ctrlShow[2411,false];
	ctrlShow[2412,false];
	ctrlShow[2413,false];
};

if(__GETC__(life_adminlevel) < 3) then
{
	ctrlShow[2024,false];

};

[] call life_fnc_p_updateMenu;

if(__GETC__(life_adminlevel) < 3) then
{
	ctrlShow[2024,false];
};






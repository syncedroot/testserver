/**
*	spawnVehicle()
*
*/
private["_unit"];
_unit = lbData[1500,lbCurSel (1500)];
//_unit = call compile format["%1", _unit];

if(isNil "_unit") exitWith {};
//if(isNull _unit) exitWith {};

hint "kick menu";
hint _unit;

//[[_unit,player],"TON_fnc_getID",false,false] spawn life_fnc_MP;


hint "Vergiss es, du machst eh nur scheiß!"

/*
hint "Init Vehicle Spawn";

if((call life_adminlevel) < 1) exitWith {};

private["_unit", "_position", "_veh"];
disableSerialization;

_unit = lbData[1501,lbCurSel (1501)];

hint _unit;

if(isNil "_unit") exitWith {hint "a";};

//
_position = position player;

for "_i" from 5 to 1 step -1 do
{
	hint format ["In %1s wird das Fahrzeug spawnen.", _i];
	sleep 1;
};

//Spawn
_veh = _unit createVehicle (_position);

sleep 2;

hint format["Fahrzeug gespawnt!\nID: %1", _unit];
*/
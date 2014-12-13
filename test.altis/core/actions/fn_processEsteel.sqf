/*
	@Author: synced-gaming.de
*/
private ["_amount1", "_amount2", "_amount3"];
_amount1 = life_inv_coal;
_amount2 = life_inv_steel;
_amount3 = "";

if (_amount1 < _amount2) then 
{
	_amount3 = (_amount2 - (_amount2 - _amount1));
	_amount2 = (_amount2 - (_amount2 - _amount1));
};
if (_amount2 < _amount1) then 
{
	_amount3 = (_amount1 - (_amount1 - _amount2));
	_amount1 = (_amount1 - (_amount1 - _amount2));
};
if (_amount1 == _amount2) then 
{
	_amount3 = _amount1;
};
if (life_inv_coal <= 0) exitWith { hint "Dir fehlt Kohle oder Stahl"; };
if (life_inv_steel <= 0) exitWith { hint "Dir fehlt Kohle oder Stahl"; };
if(vehicle player != player) exitWith {hint "Du kannst nicht im Fahrzeug verarbeiten. Steig aus!"};

if(license_civ_esteel) then
{
	if(([false,"steel",_amount2] call life_fnc_handleInv) && ([false,"coal",_amount1] call life_fnc_handleInv)) then 
	{
	titleText["Stelle Edelstahl her, das kann etwas dauern...", "PLAIN"];
	titleFadeOut 7.5;
	sleep 15;
	if (([true, "esteel", _amount3] call life_fnc_handleInv)) then 
	{
	titleText [format ["Du hast %1 Edelstahl hergestellt", _amount3], "PLAIN"];
	};
	};
};
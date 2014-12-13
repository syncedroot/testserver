/*
	@Author: [KNG]MOGGY , Killernetworkgaming.com
*/
private ["_amount"];
_amount = life_inv_ironr;
if (life_inv_ironr <= 0) exitWith { hint "Du hast kein processed Iron bei dir."; };
if(vehicle player != player) exitWith {hint "Du kannst nicht im Fahrzeug verarbeiten. Steig aus!"};

if (([false, "iron_r", _amount] call life_fnc_handleInv)) then {
	titleText["Schmiede Stahl...", "PLAIN"];
	titleFadeOut 4.5;
	sleep 6;
	if (([true, "steel", _amount] call life_fnc_handleInv)) then 
	{
		titleText [format ["Du hast %1 Stahl geschmiedet.", _amount], "PLAIN"];
	};
};
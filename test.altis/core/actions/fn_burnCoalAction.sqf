/*
	@Author: [KNG]MOGGY , Killernetworkgaming.com
*/
private ["_amount"];
_amount = life_inv_wood;
if (life_inv_wood <= 0) exitWith { hint "Du hast kein Holz"; };

if (([false, "wood", _amount] call life_fnc_handleInv)) then {
	titleText["Brenne Holzkohle...", "PLAIN"];
	titleFadeOut 4.5;
	sleep 5;
	if (([true, "coal", _amount] call life_fnc_handleInv)) then 
	{
		titleText [format ["Du hast %1 Kohle hergestellt", _amount], "PLAIN"];
	};
};
/**
*	instaHealth(BOOL health, food, water)
*
*/



private ["_health", "_food", "_water"];
_health = _this select 0;
_food = _this select 1;
_water = _this select 2;

if((call life_adminlevel) < 1) exitWith {};



if(_health) then
{
	player setDamage 0;
	player setFatigue 0;
};

if(_food) then
{
	life_hunger = 100;
	player setFatigue 0;
};

if(_water) then
{

	life_thirst = 100;
	player setFatigue 0;
};


/////////////Hints
if(_health) then
{
	hint "Gesundheit auf 100 gesetzt.";
	sleep 2;
};

if(_food) then
{
	hint "Hunger auf 100 gesetzt.";
	sleep 2;
};

if(_water) then
{
	hint "Durst auf 100 gesetzt.";
};


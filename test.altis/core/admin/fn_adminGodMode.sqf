/**
*	godMode(BOOLEAN ebale)
*
*/

private ["_enable"];
_enable = _this select 0;

//Give money
player allowDamage _enable;

//Hint + Infos
if( _enable ) then
{
	hint "God-Mode AN";
}
else
{
	hint "God-Mode AUS";
};



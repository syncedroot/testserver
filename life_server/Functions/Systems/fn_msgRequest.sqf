/*

	file: fn_msgRequest.sqf
	Author: Silex
	
	Fills the Messagelist
*/


private["_query","_queryResult","_uid","_player"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_player = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_query = format["SELECT fromID, toID, message, fromName, toName FROM messages WHERE toID='%1' ORDER BY time DESC",_uid];

waitUntil{!DB_Async_Active};
_queryResult = [_query,2,true] call DB_fnc_asyncCall;

if(count _queryResult == 0) exitWith {};
{
	[[1,_x],"life_fnc_smartphone",_player,false] spawn life_fnc_MP;
}forEach _queryResult;




/*

	file: fn_msgRequest.sqf
	Author: Silex
	Edit for 3.1.3.5 without extDB: Marcel Petersen
	
	Fills the Messagelist
    

private["_query","_queryResult","_uid","_player","_fromID","_toID","_message","_fromName","_toName"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_player = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_query = format["SELECT fromID, toID, message, fromName, toName FROM messages WHERE toID='%1'",_uid];


_queryResult = "Arma2Net.Unmanaged" callExtension format ["Arma2NETMySQLCommand ['%2', '%1']", _query,(call LIFE_SCHEMA_NAME)];
waitUntil {typeName _queryResult == "STRING"};
_queryResult = call compile format["%1", _queryResult];


_ret = [];

if(count (_queryResult select 0) == 0) exitWith {[]};
_i = 0;
{
	[[1,_x],"life_fnc_smartphone",_player,false] spawn life_fnc_MP;
    
    _fromID = (_x select 0);
	_toID = (_x select 1);
	_message = (_x select 2);
	_fromName = (_x select 3);
	_toName = (_x select 4);
    
    _ret set [_i, [_fromID, _toID, _message, _fromName, _toName]];
	_i = _i + 1;
    
}forEach (_queryResult select 0);

_ret;

*/
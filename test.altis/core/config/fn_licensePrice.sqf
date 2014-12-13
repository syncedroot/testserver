/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {50000}; //Drivers License cost
	case "boat": {100000}; //Boating license cost
	case "pilot": {5000000}; //Pilot/air license cost
	case "gun": {200000}; //Firearm/gun license cost
	case "dive": {200000}; //Diving license cost
	case "oil": {10000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {250000}; //Heroin processing license cost
	case "marijuana": {190500}; //Marijuana processing license cost
	case "medmarijuana": {15000}; //Medical Marijuana processing license cost
	case "gang": {50000}; //Gang license cost
	case "rebel": {75000}; //Rebel license cost
	case "truck": {200000}; //Truck license cost
	case "diamond": {35000};
	case "salt": {12000};
	case "cocaine": {300000};
	case "sand": {14500};
	case "iron": {95000};
	case "copper": {8000};
	case "cement": {6500};
	case "mair": {15000};
	case "home": {1500000};
	case "esteel": {1500000};
};
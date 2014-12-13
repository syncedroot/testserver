/*
Author: MrKraken
filename: fn_surrender.sqf
Description: places player into a surrendered state!
*/

player setVariable ["surrender", true, true]; //Set surrender to true

while { player getVariable ["surrender", false] } do {
player playMove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"; //Animation in

// Check if player is alive.
if (!alive player) then {
player setVariable ["surrender", false, true];
};
};

player playMoveNow "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon"; //Animation out 





/*
private ["_pos"];
if(player getVariable ["surrender", false]) exitWith { player setVariable ["surrender", false, true]; };
player setVariable ["surrender", true, true];
while { player getVariable ["surrender", false] } do {
player playMove "AmovPercMstpSnonWnonDnon_AmovPercMstpSsurWnonDnon";
// Check if player still alive.
if (!alive player) then {
player setVariable ["surrender", false, true];
};
};
player playMoveNow "AmovPercMstpSnonWnonDnon_EaseOut";
*/
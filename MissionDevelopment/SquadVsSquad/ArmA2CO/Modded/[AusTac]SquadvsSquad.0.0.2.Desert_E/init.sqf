execVM "enviroment.sqf";
//execVM "debug.sqf";
execVM "revive\ReviveAceWounds.sqf";
//_nul = [] execVM "processparamsarray.sqf";
execVM "briefing.sqf";
execVM "intro.sqf";

//Set Fog Script
if (IsServer and paramsArray select 2 == 2) then {0 setFog (random 1)};
if (IsServer and paramsArray select 2 == 0) then {0 setFog 0};
if (IsServer and paramsArray select 2 == 0.5) then {0 setFog 0.5};
if (IsServer and paramsArray select 2 == 1) then {0 setFog 1};

//AI Skill Script
if (IsServer) then {
_skill = paramsArray select 3;
{
_x setSkill _skill;
} forEach allUnits;
};

"respawn1_EAST" setMarkerAlpha 0;
"respawn1_WEST" setMarkerAlpha 0;


//If Server
if(!isServer) then {waitUntil {!isNull player}};


// Player Initialization

Remove ACE Medic init
player setVariable ["ace_w_ismedic", false];
ace_w_ismedic = false;
player removemagazine "ace_medkit";

removeAllWeapons player;
removeAllItems player;


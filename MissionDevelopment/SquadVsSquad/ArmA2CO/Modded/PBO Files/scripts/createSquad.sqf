if (!isServer) exitWith {};

_Leader = _this select 0;
_behaviour = _this select 1;
_combatmode = _this select 2;
_formation = _this select 3;
_newMan = "TK_GUE_Soldier_MG_EP1" createUnit [getPos _Leader, group _Leader, "", 0.2, "CORPORAL"];

sleep 0.1;
_newMan = "TK_GUE_Soldier_EP1" createUnit [getPos _Leader, group _Leader, "", 0.2, "CORPORAL"];

sleep 0.1;
_newMan = "TK_GUE_Soldier_AT_EP1" createUnit [getPos _Leader, group _Leader, "", 0.2, "CORPORAL"];

sleep 0.1;
_newMan = "TK_GUE_Soldier_5_EP1" createUnit [getPos _Leader, group _Leader, "", 0.2, "CORPORAL"];

sleep 1;
group _Leader setBehaviour _behaviour;
group _Leader setCombatMode _combatmode;
group _Leader setFormation _formation;
squadarray=units group _Leader;

// randommove.sqf
// Used in a units initialization line: nul=[this] execVM "randommove.sqf";

_unit = _this select 0;
_oldpos = getPos _unit;
_newpos = _oldpos;
_locations = [pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,pos10,pos11];

while {alive _unit} do
{
  while {_oldpos select 0 == _newpos select 0} do
  {
    _newpos = getPos (_locations select (random ((count _locations) - 1)));
  };
  _oldpos = _newpos;
  vehicle _unit doMove _newpos;
  _unit setCombatMode "BLUE";
  _unit setBehaviour "CARELESS";
  _unit setSpeedMode "LIMITED";
  sleep (1 + random 1);
  while {!(unitready vehicle _unit) && (alive _unit)} do
  {
    sleep 0.5;
  };
};

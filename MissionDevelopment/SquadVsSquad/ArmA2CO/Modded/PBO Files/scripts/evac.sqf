//Helicopter evac script V2 by: Ghost
if (local player) then
{
  _air_type = _this select 2;
  leader xgroup sideRadio "radio15";
  sleep 6;
  //_veh_name = getText (configFile >> "cfgVehicles" >> (_air_type) >> "displayName");
  //[WEST,"BASE"] sideChat format ["Roger that %1, %2 Inbound, over", name player, _veh_name];
  [West,"HQ"] sideRadio "radio16";
};

/*
Spawn EVAC
ghst_evac = ["spawnmarker",lz helipad,"UH60M_EP1","Endmarker",xgroup] execVM "evac.sqf";
*/
if (isServer) then
{
  _spawn_marker = _this select 0;
  _lz_pad = _this select 1;
  _air_type = _this select 2;
  _end_marker = _this select 3;
  _playergroup = _this select 4;

  //modify as needed for choper fly heights
  _flyheight = 80;
  _flyheight_gunship = 100;
  _spawnair1 = getMarkerPos _spawn_marker;
  _lz = getPos _lz_pad;

  // Get X and Y to set dir of helo
  _x = ((getPos _lz_pad select 0)-(getMarkerPos _spawn_marker select 0));
  _y = ((getPos _lz_pad select 1)-(getMarkerPos _spawn_marker select 1));

  //trig
  _dir = _x atan2 _y;
  if (_dir < 0) then {_dir = _dir+360};   //direction from _spawn_marker to _lz_pad
  _evac1 = createGroup WEST;
  _gun1 = createGroup WEST;
  _air1 = createVehicle [_air_type,_spawnair1, [], 0, "FLY"];
  _air1 setDir _dir;
  _air1 setPos [getPos _air1  select 0, getPos _air1  select 1, _flyheight];
  _airman1 = _evac1 createUnit ["US_Soldier_Pilot_EP1", _spawnair1, [], 0, "NONE"];
  _airman1 moveInDriver _air1;
  _airman2 = _evac1 createUnit ["US_Soldier_Pilot_EP1", _spawnair1, [], 0, "NONE"];
  _airman2 moveInTurret [_air1, [0]];
  _airman3 = _evac1 createUnit ["US_Soldier_Pilot_EP1", _spawnair1, [], 0, "NONE"];
  _airman3 moveInTurret [_air1, [1]];
  Sleep 0.2;
  _air1 domove _lz;
  _air1 setCaptive true;
  //_evac1 addWaypoint [_lz, 50];
  //[_evac1, 1] setWPPos _lz;
  //[_evac1, 1] setWaypointType "move";
  _air1 flyInHeight _flyheight;
  _air1 setSpeedMode "NORMAL";
  _air1 setCombatMode "BLUE";
  sleep 8;
  _spawnair2 =  [(getMarkerPos _spawn_marker select 0)-50*sin(random 359),(getMarkerPos _spawn_marker select 1)-50*cos(random 359)];
  _air2 = createVehicle ["AH64D_EP1",_spawnair2, [], 0, "FLY"];
  _air2 setDir _dir;
  _air2 setPos [getPos _air2  select 0, getPos _air2  select 1, 30];
  _air2man1 = _gun1 createUnit ["US_Soldier_Pilot_EP1", _spawnair2, [], 0, "NONE"];
  _air2man1 moveInDriver _air2;
  _air2man2 = _gun1 createUnit ["US_Soldier_Pilot_EP1", _spawnair2, [], 0, "NONE"];
  _air2man2 moveInGunner _air2;
  sleep 0.2;
  _air2 flyInHeight _flyheight_gunship;
  _air2 setSpeedMode "NORMAL";
  _air2 setCombatMode "RED";
  _wp =  [(getPos _lz_pad select 0)-100*sin(random 359),(getPos _lz_pad select 1)-100*cos(random 359)];
  _gun1 addWaypoint [_wp, 100];
  [_gun1, 1] setWPPos _wp;
  [_gun1, 1] setWaypointType "HOLD";
  [_gun1, 1] setWaypointStatements ["true", "_air2 flyInHeight 70;"];
  waitUntil {(_air1 distance _lz < 200)};
  {_x assignAsCargo _air1} forEach units _playergroup;
  {[_x] orderGetIn true} forEach units _playergroup;
  _air1 land "GET IN";
  _air1 flyInHeight 0;
  //wait for player group to board chopper
  while {true} do
  {
    sleep 1;
    _count2 = 0;
    _count = count (units _playergroup);
    {if (_x in _air1) then {_count2 = _count2 + 1}} forEach (units _playergroup);
    if (_count  == _count2) exitwith {};
  };
  // helo flies away
  sleep 2;
  _air1 vehiclechat "OK we're out of here.";
  _air1 land "NONE";
  //adjust as needed for exiting fly height
  _air1 flyInHeight 100;
  _air1 setSpeedMode "FULL";
  _air1 doMove getMarkerPos _end_marker;
  
  sleep 20;
  goEnd=true; publicVariable "goEnd";
};

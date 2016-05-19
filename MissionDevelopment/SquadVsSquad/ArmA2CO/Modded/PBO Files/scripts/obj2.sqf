if (pilots > 1) then
{
  sleep 1;
  {
  	_x enableAI "ANIM";
  	_x enableAI "MOVE";
  	_x enableAI "AUTOTARGET";
  	_x switchMove "";
  	_x setUnitPos "UP";
  	_x setCombatMode "AWARE"
  } forEach [p1,p2,p3];
  [p1,p2,p3] joinSilent xgroup;
  {_x setCaptive false} forEach [p1,p2,p3];
  leader xgroup sideRadio "radio9";
  
  sleep 6;
  [West,"HQ"] sideRadio "radio10";
  
  sleep 4;
  leader xgroup sideRadio "radio11";
  
  sleep 5;
  [West,"HQ"] sideRadio "radio13";
  ["task2","succeeded","task3"] call SHK_Taskmaster_upd;
} else
{
  sleep 1;
  leader xgroup sideRadio "radio9";
  
  sleep 6;
  [West,"HQ"] sideRadio "radio10";

  sleep 4;
  leader xgroup sideRadio "radio12";
  
  sleep 5;
  [West,"HQ"] sideRadio "radio14";
  ["task2","failed","task3"] call SHK_Taskmaster_upd;
};
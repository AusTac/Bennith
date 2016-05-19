titleText ["[AusTac] Squad vs Squad\n\nVersion 1.0.0", "BLACK FADED", 0.4];

{
 _x setBehaviour "SAFE";
 _x disableAI "AUTOTARGET";
 _x disableAI "MOVE";
 _x disableAI "ANIM";
} forEach [p1,p2,p3];


if (isServer) then
{
  
};

if(!isServer) then 
{
  waitUntil {!isNull player}
};

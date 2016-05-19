leader xgroup sideRadio "radio1";

sleep 5;
[West,"HQ"] sideRadio "radio2";

sleep 3;
leader xgroup sideRadio "radio3";

sleep 5;
[West,"HQ"] sideRadio "radio4";

sleep 8;
[West,"HQ"] sideRadio "radio5";

sleep 6;
[West,"HQ"] sideRadio "radio6";

sleep 6;
[West,"HQ"] sideRadio "radio7";

sleep 5;
leader xgroup sideRadio "radio8";
["task1","succeeded",["task2","Locate and free the crew","Find the Blackhawk crew and free them.<br/>They are probably held captive in a building not far from the crashsite."]] call SHK_Taskmaster_upd;
part1=true; publicVariable "part1";
"obj1" setMarkerType "mil_unknown";
"obj2" setMarkerType "mil_unknown";
"obj3" setMarkerType "mil_unknown";

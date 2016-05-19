
while {debugMonitor} do {
hintSilent parseText format ["
<t size='1.25' font='Bitstream' align='center' color='#5882FA'>Debug Menu</t><br/>
<t size='0.95' font='Bitstream' align='left' color='#FFBF00'></t><t size='0.95 'font='Bitstream' align='right'></t><br/>
<t size='0.95' font='Bitstream' align='left' color='#FFBF00'>FPS: </t><t size='0.95' font='Bitstream' align='right'>%1</t><br/>",		
(round diag_fps), // Used on line 49 for frames per second
];
	
//Don't modify this part
sleep 0.5;
};
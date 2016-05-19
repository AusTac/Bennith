_ps1 = "#particlesource" createVehicleLocal getpos _this;
_ps1 setParticleCircle [0, [0, 0, 0]];
_ps1 setParticleRandom [0, [0.4, 0.4, 0], [0.4, 0.4, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_ps1 setParticleParams [["\ca\data\particleeffects\fireandsmokeanim\smokeanim.p3d", 8, 1, 6], "", "billboard", 1, 8, [0, 0, 0], [0, 0, 4.5], 0, 10, 7.9, 0.5, [4, 12, 20], [[0.2, 0.2, 0.2, 0.3], [0.35, 0.35, 0.35, 0.2], [0.5, 0.5, 0.5, 0]], [0.125], 1, 0, "", "", _this];
_ps1 setDropInterval 0.2;

_ps2 = "#particlesource" createVehicleLocal getpos _this;
_ps2 setParticleCircle [0, [0, 0, 0]];
_ps2 setParticleRandom [0, [0.4, 0.4, 0], [0.4, 0.4, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_ps2 setParticleParams [["\ca\data\particleeffects\fireandsmokeanim\smokeanim.p3d", 8, 3, 1], "", "billboard", 1, 8, [0, 0, 0], [0, 0, 4.5], 0, 10, 7.9, 0.5, [4, 12, 20], [[0.33, 0.33, 0.33, 0.8], [0.66, 0.66, 0.66, 0.4], [1, 1, 1, 0]], [0.125], 1, 0, "", "", _this];
_ps2 setDropInterval 0.2;
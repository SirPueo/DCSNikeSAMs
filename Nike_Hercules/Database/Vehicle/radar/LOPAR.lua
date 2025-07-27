-- MIM-14 Nike-Hercules LOPAR

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MAZ543M);
--GT.chassis.life = 4;

--3d model file
GT.visual.shape = "LOPAR";
GT.visual.shape_dstr = "LOPAR";
--GT.visual.fire_pos[2] = 1;

--Burning after hit
GT.visual.fire_size = 1.0; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 2; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200; --burning time (seconds)

--radar rotation animation
GT.animation_arguments.locator_rotation = 0;
GT.radar_rotation_period = 6.0; --10 rpm
GT.snd.radarRotation = "RadarRotation";

--sensor characteristics
GT.sensor = {};
GT.sensor.max_range_finding_target = 230000;
GT.sensor.min_range_finding_target = 2000;
GT.sensor.max_alt_finding_target = 50000;
GT.sensor.height = 4;
GT.CustomAimPoint = {0,4,0}

GT.WS = {};
GT.WS.maxTargetDetectionRange = 230000;
GT.WS.radar_type = 102;
GT.WS.radar_rotation_type = 0;
GT.WS.searchRadarFrequencies = {4910.0e6, 5090.0e6};
--GT.WS.isDetector = true;
GT.WS.depends_on_unit = {"Nike-Hercules RCT"};

local ws = 0;
for i = 1,10 do 
    ws = GT_t.inc_ws();
	GT.WS[ws] = {}
    GT.WS[ws].pos = {0,4,0}
	GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(2), math.rad(22)},
					};
    GT.WS[ws].omegaY = 3
    GT.WS[ws].omegaZ = 3
    GT.WS[ws].LN = 
    {
        {
        type = 101,
		reflection_limit = 0.06,
        distanceMin = GT.sensor.min_range_finding_target,
        distanceMax = GT.sensor.max_range_finding_target,
		ECM_K = 0.6,
        min_trg_alt = 50,
        max_trg_alt = GT.sensor.max_alt_finding_target,
        reactionTime = 6;
        },
    }
end

GT.Name = "Nike-Hercules LOPAR";
GT.DisplayName = _("Nike-Hercules Low Power Aquisition Radar");
GT.DisplayNameShort = _("Nike-Hercules LOPAR");
GT.Rate = 20;

GT.Sensors = { RADAR = "LOPAR_sr" };

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000083";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar,WSTYPE_PLACEHOLDER,
				"LR SAM",
				"SAM SR",
				"RADAR_BAND1_FOR_ARM",
				"CustomAimPoint",
				};
GT.category = "Air Defence";
GT.tags = { "Air Defence", "Search Radar" };
GT.Countries = {"USA","Belgium","Denmark","Germany","Greece","Italy","Japan","South Korea","The Netherlands","Norway","Spain","Turkey"};

-- MIM-14 Nike-Hercules MTR_Covered

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 4;

GT.visual.shape = "MTR_TTR_TRR_Covered";
GT.visual.shape_dstr = "MTR_TTR_TRR_Covered";
GT.visual.fire_pos[2] = 1;

GT.IR_emission_coeff = 0.05

GT.snd.radarRotation = "RadarRotation"; 

GT.sensor = {};
GT.sensor.max_range_finding_target = 185000;
GT.sensor.min_range_finding_target = 2000;
GT.sensor.max_alt_finding_target = 50000;
GT.sensor.height = 4;

--Burning after hit
GT.visual.fire_size = 0.5; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)
GT.visual.min_time_agony = 10;
GT.visual.max_time_agony = 60;
GT.visual.agony_explosion_size = 3;

GT.CustomAimPoint = {0,1.5,0}


GT.visual.IR = { coeffs = {GT_t.IR_COEFFS_ENGINE_APC, {0.0, 0.0}, GT_t.IR_COEFFS_Radar_LTR, GT_t.IR_COEFFS_BODY, {0.2, 0.2/750}}}


-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 185000;
GT.WS.radar_type = 102;
GT.WS.searchRadarFrequencies = {4910.0e6, 5090.0e6};--{{8.5e9, 9.6e9}};
--GT.WS.isDetector = true;

-- 1 tracker, only one target to be tracked at a time
local ws = GT_t.inc_ws();
--local base = ws;
GT.WS[ws] = {};
GT.WS[ws].center = "POINT_CENTER"
GT.WS[ws].pointer = "POINT_RADAR"
GT.WS[ws].pos = {0,4,0};
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(-5), math.rad(80)},
					};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(15);
GT.WS[ws].omegaZ = math.rad(15);
GT.WS[ws].pidY = { p = 5, i = 0.0, d = 4, inn = 0.2};
GT.WS[ws].pidZ = { p = 5, i = 0.0, d = 4, inn = 0.2};

GT.WS[ws].LN = {};
GT.WS[ws].LN[1] = {};
GT.WS[ws].LN[1].depends_on_unit = {"Nike-Hercules RCT"};
GT.WS[ws].LN[1].reactionTime = 10;
GT.WS[ws].LN[1].type = 102;
GT.WS[ws].LN[1].distanceMin = 2000;
GT.WS[ws].LN[1].distanceMax = 185000;
GT.WS[ws].LN[1].reflection_limit = 0.06;
GT.WS[ws].LN[1].ECM_K = 0.4;
GT.WS[ws].LN[1].min_trg_alt = 100;
GT.WS[ws].LN[1].max_trg_alt = 90000;
GT.WS[ws].LN[1].max_number_of_missiles_channels = 1;
GT.WS[ws].LN[1].beamWidth = math.rad(90);
GT.WS[ws].LN[1].frequencyRange = {8.5e9, 9.6e9};

GT.Name = "Nike-Hercules MTR_Covered";
GT.DisplayName = _("Nike-Hercules Missile Tracking Radar (Covered)");
GT.DisplayNameShort = _("Nike-Hercules MTR");
GT.Rate = 10;
GT.Sensors = { RADAR = "TTR_MTR", };
GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000083";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar,WSTYPE_PLACEHOLDER,
				"LR SAM",
				"SAM TR",
				"RADAR_BAND1_FOR_ARM",
				"CustomAimPoint",
				};
GT.category = "Air Defence";
GT.tags = { "Air Defence", "Tracking Radar" };
GT.Countries = {"USA","Belgium","Denmark","Germany","Greece","Italy","Japan","South Korea","The Netherlands","Norway","Spain","Turkey"};

-- MIM-14 Nike-Hercules AN/FPS-71 HIPAR - In radome

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MAZ543M);

--3d model file
GT.visual.shape = "HIPAR";
GT.visual.shape_dstr = "HIPAR";
--GT.positioning = "ONLYHEIGTH"

--sensor characteristics
GT.sensor = {};
GT.sensor.max_range_finding_target = 320000; --m
GT.sensor.min_range_finding_target = 2000; --m
GT.sensor.max_alt_finding_target = 46000; --m
GT.sensor.height = 19; --m

GT.CustomAimPoint = {0,19,0}

--GT.animation_arguments.locator_rotation = 1; --No animatedParts
GT.radar_rotation_period = 8;
GT.snd.radarRotation = "RadarRotation";

-- weapon systems
GT.WS = {};
GT.WS.maxTargetDetectionRange = GT.sensor.max_range_finding_target;
GT.WS.radar_type = 105;
GT.WS.radar_rotation_type = 0;
GT.WS.searchRadarFrequencies = {1.35e9, 1.45e9};--{2.85e9, 3.2e9};
--GT.WS.isDetector = true;

--Burning after hit
GT.visual.fire_size = 0.5; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 20; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)

local ws = 0;
for i = 1,15 do 
    ws = GT_t.inc_ws();
	GT.WS[ws] = {}
    GT.WS[ws].pos = {0,10,0}
	GT.WS[ws].angles = {{math.rad(180), math.rad(-180), math.rad(0), math.rad(60)},};
    GT.WS[ws].omegaY = 3
    GT.WS[ws].omegaZ = 3
    GT.WS[ws].LN = 
    {
        {
        type = 101,
		reflection_limit = 0.06,
        distanceMin = GT.sensor.min_range_finding_target,
        distanceMax = GT.sensor.max_range_finding_target,
		ECM_K = 0.45,
        min_trg_alt = 50,
        max_trg_alt = GT.sensor.max_alt_finding_target,
        reactionTime = 10;
        },
    }
end

GT.Name = "HIPAR";
GT.DisplayName = _("Nike-Hercules High Power Aquisition Radar AN/FPS-71");
GT.DisplayNameShort = _("AN/FPS-71 HIPAR");
GT.Rate = 20;

GT.Crew = 0; -- no human sensor
GT.Sensors = { RADAR = "HIPAR_sr"};

GT.EWR = true

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000036";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar,WSTYPE_PLACEHOLDER,
				"EWR",
				};
GT.Countries = {"USA","Belgium","Denmark","Germany","Greece","Italy","Japan","South Korea","The Netherlands","Norway","Spain","Turkey"};
GT.category = "Air Defence";
GT.tags  = {"Air Defence", "EW Radar"};

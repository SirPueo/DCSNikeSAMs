-- MIM-14 Nike-Hercules Launch Control Trailer


GT = {};
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.MAZ543M);

GT.visual.shape = "LCT"
GT.visual.shape_dstr = "LCT"

--chassis
GT.swing_on_run = false


--Burning after hit
GT.visual.fire_size = 0.7; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)

GT.Name = "Nike-Hercules LCT"
GT.DisplayName = _('Nike-Hercules Launch Control Trailer')
GT.DisplayNameShort = _('Nike-Hercules LCT')
GT.Rate = 3;
GT.depends_on_unit = {{{"Nike-Hercules BCT"},{"Nike-Hercules RCT"}}};
GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000212";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_NoWeapon,wsType_GenericVehicle,
				"Trucks",
				};
GT.category = "Air Defence";
GT.Countries = {"USA","Belgium","Denmark","Germany","Greece","Italy","Japan","South Korea","The Netherlands","Norway","Spain","Turkey"};

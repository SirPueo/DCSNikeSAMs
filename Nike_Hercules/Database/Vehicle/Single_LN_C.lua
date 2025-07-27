-- MIM-14C Nike-Hercules Launcher
-- By SirPueo


GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
--set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MAZ543M);
GT.chassis.life = 2;

GT.visual.shape = "SingleLN_V1";
GT.visual.shape_dstr = "SingleLN_V1"; ---------need to add destroyed model-----------------

--chassis

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 8.225;

--Burning after hit
GT.visual.fire_size = 1.1; --relative burning size
GT.visual.fire_pos[1] = 2; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1100; --burning time (seconds)

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 250000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.NikeHerculesC);
GT.WS[ws].pos = {0, 0, 0};
GT.WS[ws].LN[1].ECM_K = -1;
GT.WS[ws].LN[1].beamWidth = 0.0;
GT.WS[ws].LN[1].barrels_reload_type = 3; -- BarrelsReloadTypes.SEQUENTIALY
GT.WS[ws].LN[1].depends_on_unit = {{{"Nike-Hercules MTR"},},};
GT.WS[ws].LN[1].reactionTime = 6;
GT.WS[ws].LN[1].PL[1].ammo_capacity = 1;
GT.WS[ws].LN[1].PL[1].shot_delay = 10;
GT.WS[ws].LN[1].PL[1].reload_time = 7200;
GT.WS[ws].LN[1].BR[1] = {connector_name = 'connector_1',drawArgument = 4 };

GT.Name = "Nike Hercules ln_C";
GT.DisplayName = _('Nike Hercules Single Launcher_C');
GT.DisplayNameShort = _("Nike Hercules LN_C");
GT.Rate = 10;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000079";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Miss,WSTYPE_PLACEHOLDER,
				"AA_missile",
				"SAM LL",
				};
GT.category = "Air Defence";
GT.tags  =
{
    "Air Defence",
	"Launcher",
};
GT.Countries = {"USA","Belgium","Denmark","Germany","Greece","Italy","Japan","South Korea","The Netherlands","Norway","Spain","Turkey"};

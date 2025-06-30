-- MIM-14B Nike-Hercules Missile_Standard
-- By SirPueo


local MIM14B = {
	name = MIM14B,
	display_name = _('MIM-14B Nike Hercules'),
	display_name_short = _('MIM-14B Nike Hercules'),
	name = "MIM14B",
	Escort = 3, -- 0 - no, 1 - launch aircraft, 2 - another aircraft, 3 - from the ground
	Head_Type = 6, -- Seeker type code, in our case 6 is for Semi-active radar homing. 1 = Passive IR homing, 2 = Active Radar Homing
	sigma = {30, 30, 30},
	M = 4853,  --total booster + missile = 4853 kg
	H_max = 30000.0, -- Maximum target altitude
	H_min = 300.0, -- minimum target altitude
	Diam = 790.0, -- Missile diameter in mm
	Cx_pil = 10,
	D_max = 51000.0, -- Maximum range firing at low altitude, in meters (56000 yards)
	D_min = 6500.0, -- minimum range in meters
	Head_Form = 1, -- determines shape of the missile head for drag modeling; 0 for hemispherical, 1 for conical
	Life_Time = 240.0,
	Nr_max = 7, -- Maximum g when turning 7 for -14B, 10 -14C
	v_min = 0.0,
	v_mid = 900.0,
	Mach_max = 3.5,
	t_b = 0, -- Motor start delay
	t_acc = -1, -- motor burn time
	t_marsh = -1, -- cruise time, 0.0 if not applicable
	Range_max = 155000.0, -- Max range in meters
	H_min_t = 300.0,
	Fi_start = 3.14152,
	Fi_rak = 3.14152,
	Fi_excort = math.rad(125), --3.14152,
	Fi_search = 99.9,
	OmViz_max = 99.9, -- line-of-sight speed limit
	ccm_k0 = 1.25, -- Countermeasures effectiveness 1.25 for -14B, 0.8 for -14C
	warhead = enhanced_a2a_warhead(175, 900),
	
	
	
	ModelData = {
		58, -- model params count
		3, -- characteristic square
		
		-- Cx parameters
		0.04 , -- Cx_k0 bar Cx0 at subsonic ( M << 1)
		0.075 , -- Cx_k1 height of the peak of the wave crisis
		0.01 , -- Cx_k2 front steepness on approach to wave crisis
		-0.24 , -- Cx_k3 bar Cx0 at supersonic speed ( M >> 1)
		0.07 , -- Cx_k4 steepness of decline after wave crisis
		0.7 , -- polar dump coefficient (proportional to sqrt (M^2-1))
		
		-- Cy parameters
		1.8 , -- Cy_k0 bar Cy0 at subsonic ( M << 1)
		0.8 , -- Cy_k1 bar Cy0 at supersonic speed ( M >> 1)
		1.2 , -- Cy_k2 steepness of decline (front) behind wave crisis

		math.rad(16.0), -- maximum balancing angle, radians
		0.0, -- angular velocity created by the moment of the gas rudders
		
		--total sustainer motor mass of 750lbs / 340kg
		--total booster (not just booster motor) = 2400kg
		-- Engine data. Time, fuel flow, thrust.	
		--t_start   t_boost     t_accel    t_march     t_inertial   t_break  t_end   --Stage
		 -1.0,	    -1.0,	    3.4,	       29,		0.0,	    0.0,	 1.0e9,  -- time of stage, sec
		 0.0,	    0.0,	    705.8,	   11.7,		0.0,	    0.0,	 0.0,    -- fuel flow rate, kg/sec
		 0.0,	    0.0,	800000.0,   80000.0,	    0.0,	    0.0,	 0.0,    -- thrust, newtons

		 300.0 , --self-destruct timer, sec
		 300.0, -- power system operating time, sec
		 200.0, -- absolute altitude of self-destruction, m
		 3.2, -- control activation delay time (flight, safety maneuver), sec
		 37000, -- 20nmi. the range to the target at the moment of launch, upon exceeding which the missile performs a "loft" maneuver, m
		 37000, -- 20nmi. range to the target at which the "loft" maneuver is completed and the missile switches to pure proportional navigation (must be greater than or equal to the previous parameter), m
		 math.rad(20.0), -- sine of the elevation angle of the climb trajectory
		 0.0, -- longitudinal acceleration of fuse arming
		 0.0, -- speed module reported by the ejection device, expelling charge, etc.
		 1.19, -- characteristic of the SAU-RAKETA system, second-order filter coefficient K0
		 1.0, -- characteristic of the SAU-RAKETA system, coefficient of the second-order filter K1
		 2.0, -- characteristic of the SAU-RAKETA system, control loop bandwidth
		 
		 -- Data for calculating launch ranges (indication on the sight)
		 0.0, -- derivative of range with respect to carrier speed at an altitude of 1 km, PPS
		 0.0, -- derivative of range with respect to target speed at an altitude of 1 km, ZPS
		 0.0, -- derivative with respect to altitude of derivative of range with respect to target speed, ZPS
		 0.0, -- range angle 180 degrees (towards), H=5000m, V=900km/h, m
		 0.0, -- range angle 0 (to catch up) deg, H=5000m, V=900km/h, m
		 0; -- range angle 180 (towards) degrees, H=10000m, V=900km/h, m 69km
		 0; -- range angle 0 (to catch up) deg, H=10000m, V=900km/h, m
		 0; -- range angle 180 degrees (towards), H=1000m, V=900km/h, m
		 0; -- range angle 0 (to catch up) deg, H=1000m, V=900km/h, m
		 0; -- back offset relative to zero of the rear point of the reachable zone
		 0; -- percentage of guaranteed range from range in PPS at an altitude of 1 km
		 0; -- derivative of the percentage of guaranteed range in PPS by altitude
		 0; 
	},
	
	PN_coeffs = {3,
		5000.0, 1.0,
		50000.0, 0.8,
		300000.0, 0.6
	},
	--warhead 		= 
	--{
	--	mass 					= 777; 
	--	expl_mass 				= 283;
	--	other_factors 			= {1, 1, 1};
	--	obj_factors 			= {1, 1};
	--	concrete_factors 		= {1, 1, 1};
	--	cumulative_factor 		= 0;
	--	concrete_obj_factor 	= 0.0;
	--	cumulative_thickness 	= 0.0;
	--	piercing_mass			= 80.0;
	--	caliber					= 500,
	--},
	
	
	smoke_opacity_type = 0,
	booster_exhaust = { 0.9, 0.9, 0.9, 1.0 }, --solid fuel
	booster_effect_type = 1,
	X_back_acc = -6.3,
	Y_back_acc = 0.0,
	Z_back_acc = 0.0,
	exhaust1 = {0.9,0.9,0.9,0.3}, 
	exhaust2 = { 0.9, 0.9, 0.9, 1.0 },
	X_back = -6.7,
	Y_back = 0.0,
	Z_back = 0.0,
	
	Reflection = 0.49, --Missile front cross-section area (for anti-missile detection purposes). 
	KillDistance = 50.0,
	category = CAT_MISSILES,
	
	wsTypeOfWeapon  = {wsType_Weapon,wsType_Missile,wsType_SA_Missile,WSTYPE_PLACEHOLDER};
	
	shape_table_data = 
	{
		{
			name	 = "MIM-14B";
			file  	 = "NikeHercMissile";
			life  	 = 1;
			fire  	 = { 0, 1};
			username = "MIM14B";
			index = WSTYPE_PLACEHOLDER;
		},
	},
	
	fuze_proximity = {
		ignore_inp_armed	= 1,
		radius				= 85,
	},
};
declare_weapon(MIM14B)

GT_t.WS_t.NikeHerculesB = {}
GT_t.WS_t.NikeHerculesB.moveable = false
GT_t.WS_t.NikeHerculesB.angles = {
					{math.rad(180), math.rad(-180), math.rad(-90), math.rad(90)},
					};

GT_t.WS_t.NikeHerculesB.LN = {}
GT_t.WS_t.NikeHerculesB.LN[1] = {}
GT_t.WS_t.NikeHerculesB.LN[1].type = 4
GT_t.WS_t.NikeHerculesB.LN[1].distanceMin = 6500;
GT_t.WS_t.NikeHerculesB.LN[1].distanceMax = 155000;
GT_t.WS_t.NikeHerculesB.LN[1].ECM_K = 0.4; -- Notional susceptibility to chaff and ECM (mostly handled through other mechanics, but a -1 means no effect, often seen with IR missiles). 
GT_t.WS_t.NikeHerculesB.LN[1].reactionTime = 6; --Acquisition time for the weapon sighting system (should correspond to that of the the carrying vehicle but may be overwritten depending on sensors and data-linking capabilities).
GT_t.WS_t.NikeHerculesB.LN[1].launch_delay = 10; --Time in seconds between successive missile launches (time to ready new missile). 
GT_t.WS_t.NikeHerculesB.LN[1].reflection_limit = 0.05;
GT_t.WS_t.NikeHerculesB.LN[1].show_external_missile = true;
GT_t.WS_t.NikeHerculesB.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.NikeHerculesB.LN[1].sensor, GT_t.WSN_t[0])
GT_t.WS_t.NikeHerculesB.LN[1].beamWidth = math.rad(1);
GT_t.WS_t.NikeHerculesB.LN[1].PL = {}
GT_t.WS_t.NikeHerculesB.LN[1].PL[1] = {}
GT_t.WS_t.NikeHerculesB.LN[1].PL[1].ammo_capacity = 1;
GT_t.WS_t.NikeHerculesB.LN[1].PL[1].type_ammunition = MIM14B.wsTypeOfWeapon;
GT_t.WS_t.NikeHerculesB.LN[1].PL[1].reload_time = 15*60; -- 15 minutes
GT_t.WS_t.NikeHerculesB.LN[1].BR = { {pos = {0, 0, 0} } }

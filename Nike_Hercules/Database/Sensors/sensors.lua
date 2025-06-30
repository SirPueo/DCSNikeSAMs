-- --SENSOR TYPE
-- local SENSOR_OPTICAL = 0
-- local SENSOR_RADAR = 1
-- local SENSOR_IRST = 2
-- local SENSOR_RWR = 3
-- --RADAR
-- local RADAR_AS = 0
-- local RADAR_SS = 1
-- local RADAR_MULTIROLE = 2
-- --
-- local ASPECT_HEAD_ON = 0
-- local ASPECT_TAIL_ON = 1
-- --
-- local HEMISPHERE_UPPER = 0
-- local HEMISPHERE_LOWER = 1
-- --IRST
-- local ENGINE_MODE_FORSAGE = 0
-- local ENGINE_MODE_MAXIMAL = 1
-- local ENGINE_MODE_MINIMAL = 2
-- --OPTIC
-- local OPTIC_SENSOR_TV = 0
-- local OPTIC_SENSOR_LLTV = 1
-- local OPTIC_SENSOR_IR = 2



LOPAR =
        {
			Name = "LOPAR_sr",
			category = SENSOR_RADAR,
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {0, 22.0} -- https://ed-thelen.org/LOPAR-ScanMode3-.jpg
            },
            max_measuring_distance = 230000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 230000.0,
                    [ASPECT_TAIL_ON] = 230000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 230000.0,
                    [ASPECT_TAIL_ON] = 230000.0
                }
            },
            lock_on_distance_coeff = 0.60,
			multiple_targets_tracking = false,
            velocity_limits =
            {
                radial_velocity_min = 15.0,
            },
            scan_period = 6.0,
        }

declare_sensor(LOPAR)

HIPAR =
        {
			Name = "HIPAR_sr",
			category = SENSOR_RADAR,
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {0.0, 60.0} -- https://ed-thelen.org/ifc_acq.html#hipar
            },
            max_measuring_distance = 425000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 425000.0,
                    [ASPECT_TAIL_ON] = 425000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 425000.0,
                    [ASPECT_TAIL_ON] = 425000.0
                }
            },
            lock_on_distance_coeff = 0.70,
			multiple_targets_tracking = false,
            velocity_limits =
            {
                radial_velocity_min = 15.0,
            },
            scan_period = 9.0,
        }

declare_sensor(HIPAR)
 
TTR_MTR =
        {
            Name = "TTR_MTR",
            category = SENSOR_RADAR,
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 185000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 185000.0,
                    [ASPECT_TAIL_ON] = 185000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 185000.0,
                    [ASPECT_TAIL_ON] = 185000.0
                }
            },
            lock_on_distance_coeff = 0.7,
			multiple_targets_tracking = false,
            scan_period = 1.0,
        }

declare_sensor(TTR_MTR)

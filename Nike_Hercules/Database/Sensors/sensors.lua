
LOPAR =
        {
			Name = "LOPAR_sr",
			category = SENSOR_RADAR,
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {0, 19.0} -- https://ed-thelen.org/LOPAR-ScanMode3-.jpg
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
            max_measuring_distance = 320000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 320000.0,
                    [ASPECT_TAIL_ON] = 320000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 320000.0,
                    [ASPECT_TAIL_ON] = 320000.0
                }
            },
            lock_on_distance_coeff = 0.70,
			multiple_targets_tracking = false,
            velocity_limits =
            {
                radial_velocity_min = 15.0,
            },
            scan_period = 8.0,
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

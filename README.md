# DCS MIM-14 Nike Hercules System
## Introduction
This mod adds the MIM-14 Nike Hercules to DCS World. The Nike Hercules is a command-guided, long-range, high-altitude anti-aircraft missile operated from the late 1950s to late 1980s.

## Install
Extract the Nike_Hercules file into **C:\Username\Saved Games\DCS\Mods\tech**


## Equipment Overview
### MIM-14B/C
![Missile Drawing](https://www.nikemissile.org/IFC/missile2.jpg)

The Nike Hercules Missile is a two-stage missile. The missile is launched near verically by the booster stage motor. The booster stage lasts for 3.4 seconds and propells the missile without guidance to above one mile. The booster will fall away due to aerodynamic drag following booster motor burn-out.

Following booster motor separation, in reality, depending on target range and altitude, the missile will either ignite the 29 second sustainer motor immediately or after a 5.6 second delay (9 seconds after lift-off). The delayed ignition allows for the missile to execute a tighter turn towards the target for low altitude or short range targets.
The sustainer motor last for 29 seconds. The sustainer motor may ignite immediately following booster separation or after the missile completes its turn toward the target.

Documentation indicates that variants of the MIM-14 had g-limits of 7g with upgrades to 10g later in service.

**Perormance Specs:**
- Maximum effective range: 200,000 yards (98.7 nmi, 182.8 km)
- Minimum effective range: 33,500 yards (16.5 nmi, 30.6 km)

**Mod Simplifications (This mod combines the two performance variations into two missile variants):**
- The MIM-14B missiles are limited to 7g and do not include the sustainer motor delay.
- The MIM-14C missiles are limited to 10g and include the sustainer motor delay.


### AN/MPQ-43 HIPAR (high power acquisition radar)
![HIPAR](https://ed-thelen.org/hipar_station.gif)

The primary function of the HIPAR system is to locate, interrogate, and designate, to the target track radar (TTR), targets in the area defended by the improved Hercules system. The HIPAR system can detect aircraft and tactical ballistic missile targets.

**Perormance Specs:**
- Elevation: 0 to 60 deg., 151,000ft, 46km altitude
- Horizonal Coverage: 350,000 yards (172nmi, 320km) range
- Antenna Speed: 6.6 and 10 RPM
- RF Freq Range: 1.35 - 1.45 GHz

**Mod Simplifications:**
- Antenna Speed: 7.5 RPM


### LOPAR (low power acquisition radar)
![LOPAR](https://ed-thelen.org/LOPAR-ORD.jpg)

The LOPAR was the ACQ radar from Ajax, retained for Hercules and renamed to LOPAR. Targets identified with the more powerful HIPAR would be then picked up on the LOPAR which would interigate with its IFF system.

- Beam Angle: 1.4 deg Azimuth
- Elevation: 2 to 22 deg. 
- Antenna Speed: 5, 10 and 15 RPM
- RF Freq. Range: 3.1 - 3.4 GHz 

**Mod Simplifications:**
- Antenna Speed: 10 RPM



### MTR/TTR (Missile Tracking Radar/Target Tracking Radar)
![MTR/TTR](https://ed-thelen.org/pics5/Nike_Missile_Site_SF-88_HercTracking.jpg)

The LOPAR provided rough range, azimuth and limited altitude or elevation information to the operators of the Target Tracking Radar (TTR), who would manually slew the TTR onto the target. Once locked-on, tracking was automatic.

The MTR Tracks the position of the missile from launch, enabling the ground based system to calculate the necessary steering and fuzing commands for the missile to intercept the target tracked by the TTR. To facilitate missile tracking, in reality, the MTR must have uninterrupted line of sight from launch to target intercept.

**Perormance Specs:**
- Freq. Range 	8.5 - 9.6 GHz 

### TRR (Target Ranging Radar)
![TRR](https://ed-thelen.org/trr_ant.jpg)

The Target Ranging Radar (TRR) was used to counter jamming techniques used against monopulse radars like the Target Tracking Radar (TTR). Jammers can disrupt range measurements by sending false signals, but the TRR countered this by rapidly switching between widely spaced frequencies, making it difficult to jam effectively. While TRR handled range, the TTR could still track targets in azimuth and elevation and was upgraded with a "home-on-jam" mode to track jamming signals directly.

**Perormance Specs:**
- Freq Range 	15.7 to 17.5 gHz 

### LCT (Launch Control Trailer)
![LCT](https://ed-thelen.org/LaunchControlTrailer-.jpg)

### BCT (Battery Control Trailer)
![BCT](https://ed-thelen.org/FM44-80-trailerComputer-.png)

### RCT (Radar Control Trailer)

![RCT](https://ed-thelen.org/FM44-80-RadarTrailer-Target-.png)

### Other Buildings
**Interconnection Building**

![ICB](https://nikemissile.org/ifcsketvch.jpg)

**Power Building**

![Power Building](https://www.nikemissile.org/Generators/launcher.jpg)


**Elevation Tower**
  
![Elevation Tower](https://th.bing.com/th/id/R.b4860ea3ad21dc50d522e3fb3c5cc3e9?rik=2tbN5ty1IcaEbQ&riu=http%3a%2f%2fnikeordnance.nikemissile.org%2fHiparMtr2.jpg&ehk=R26niUUchIdtbRuMLz7ULyPlQrOE9n%2fFZS5xlK4r%2fv4%3d&risl=&pid=ImgRaw&r=0)


### Site Layout
![System Overview](https://nikemissile.org/herc_system/page4.jpg)


## References
- https://nikemissile.org/
- https://ed-thelen.org/

## DCS-isms
Radar frequencies (for opposing AGM-45 settings)
- HIPAR: 2.85e9 to 3.2e9
- LOPAR: 4910.0e6, 5090.0e6
- MTR: 8.5e9, 9.6e9
- TRR: 15.7e9, 17.5e9
- TTR: 8.5e9, 9.6e9

## Missing features
- Nuclear warhead (currently using a rough approximation of the conventional warhead)
- Refined missile performance (missile may be overperforming, likely having too little drag)
- Detailed Textures (very basic textures currently present)
- Animated Launcher (currently a static object with missile in upright position as if on alert)

## Site Template
Add the following to the templates file on the following path:
**C:\Username\Saved Games\DCS\MissionEditor\templates.lua** 
```
["Nike Hercules Site"] = 
	{
		["type"] = "vehicle",
		["name"] = "Nike Hercules Site",
		["country"] = 2,
		["units"] = 
		{
			[1] = 
			{
				["dx"] = 0,
				["dy"] = 0,
				["name"] = "Nike-Hercules RCT",
				["skill"] = "Average",
				["heading"] = 0,
			}, -- end of [1]
			[2] = 
			{
				["dx"] = -0.20792494999478,
				["dy"] = -8.8510406699497,
				["name"] = "Nike-Hercules Int Bldg",
				["skill"] = "Average",
				["heading"] = 0,
			}, -- end of [2]
			[3] = 
			{
				["dx"] = 0.057747870043386,
				["dy"] = -17.581716589979,
				["name"] = "Nike-Hercules BCT",
				["skill"] = "Average",
				["heading"] = 3.1415926535898,
			}, -- end of [3]
			[4] = 
			{
				["dx"] = 37.047369440028,
				["dy"] = -8.9008290499914,
				["name"] = "HIPAR",
				["skill"] = "Average",
				["heading"] = 0,
			}, -- end of [4]
			[5] = 
			{
				["dx"] = 84.17386356002,
				["dy"] = -8.4945661699167,
				["name"] = "Nike-Hercules LOPAR",
				["skill"] = "Average",
				["heading"] = 0,
			}, -- end of [5]
			[6] = 
			{
				["dx"] = 35.76298968005,
				["dy"] = -98.526153129991,
				["name"] = "Nike-Hercules MTR",
				["skill"] = "Average",
				["heading"] = 0,
			}, -- end of [6]
			[7] = 
			{
				["dx"] = 37.812365570047,
				["dy"] = 88.59092401003,
				["name"] = "Nike-Hercules TRR",
				["skill"] = "Average",
				["heading"] = 0,
			}, -- end of [7]
			[8] = 
			{
				["dx"] = 36.490441490023,
				["dy"] = 175.46434802003,
				["name"] = "Nike-Hercules TTR",
				["skill"] = "Average",
				["heading"] = 0,
			}, -- end of [8]
			[9] = 
			{
				["dx"] = 36.387112850032,
				["dy"] = 6.6116916600149,
				["name"] = "Nike-Hercules Pwr Bldg",
				["skill"] = "Average",
				["heading"] = 0,
			}, -- end of [9]
			[10] = 
			{
				["dx"] = 922.57064177003,
				["dy"] = 158.80585192004,
				["name"] = "Nike-Hercules LCT",
				["skill"] = "Average",
				["heading"] = 0,
			}, -- end of [10]
			[11] = 
			{
				["dx"] = 1032.38603811,
				["dy"] = 131.12615085009,
				["name"] = "Nike Hercules ln_C",
				["skill"] = "Average",
				["heading"] = 4.7123889803847,
			}, -- end of [11]
			[12] = 
			{
				["dx"] = 1032.41448669,
				["dy"] = 119.83472567005,
				["name"] = "Nike Hercules ln_C",
				["skill"] = "Average",
				["heading"] = 4.7123889803847,
			}, -- end of [12]
			[13] = 
			{
				["dx"] = 1032.5355274,
				["dy"] = 108.46048259002,
				["name"] = "Nike Hercules ln_C",
				["skill"] = "Average",
				["heading"] = 4.7123889803847,
			}, -- end of [13]
			[14] = 
			{
				["dx"] = 1032.4506009,
				["dy"] = 97.074781200034,
				["name"] = "Nike Hercules ln_C",
				["skill"] = "Average",
				["heading"] = 4.7123889803847,
			}, -- end of [14]
			[15] = 
			{
				["dx"] = 1041.47117867,
				["dy"] = 520.6811131601,
				["name"] = "Nike Hercules ln_C",
				["skill"] = "Average",
				["heading"] = 4.7123889803847,
			}, -- end of [15]
			[16] = 
			{
				["dx"] = 1041.40049145,
				["dy"] = 531.40419989999,
				["name"] = "Nike Hercules ln_C",
				["skill"] = "Average",
				["heading"] = 4.7123889803847,
			}, -- end of [16]
			[17] = 
			{
				["dx"] = 1041.47117867,
				["dy"] = 542.33049980004,
				["name"] = "Nike Hercules ln_C",
				["skill"] = "Average",
				["heading"] = 4.7123889803847,
			}, -- end of [17]
			[18] = 
			{
				["dx"] = 1041.47117867,
				["dy"] = 553.15519312001,
				["name"] = "Nike Hercules ln_C",
				["skill"] = "Average",
				["heading"] = 4.7123889803847,
			}, -- end of [18]
			[19] = 
			{
				["dx"] = 1027.96330139,
				["dy"] = -361.55355164001,
				["name"] = "Nike Hercules ln_C",
				["skill"] = "Average",
				["heading"] = 4.7123889803847,
			}, -- end of [19]
			[20] = 
			{
				["dx"] = 1028.12072357,
				["dy"] = -372.71690892999,
				["name"] = "Nike Hercules ln_C",
				["skill"] = "Average",
				["heading"] = 4.7123889803847,
			}, -- end of [20]
			[21] = 
			{
				["dx"] = 1028.12072357,
				["dy"] = -383.54160224996,
				["name"] = "Nike Hercules ln_C",
				["skill"] = "Average",
				["heading"] = 4.7123889803847,
			}, -- end of [21]
			[22] = 
			{
				["dx"] = 1028.12072357,
				["dy"] = -394.36629556993,
				["name"] = "Nike Hercules ln_C",
				["skill"] = "Average",
				["heading"] = 4.7123889803847,
			}, -- end of [22]
		}, -- end of ["units"]
	}, -- end of ["Nike Hercules Site"]
 ```

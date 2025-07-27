# DCS MIM-14 Nike Hercules System
## Introduction
This mod adds the MIM-14 Nike Hercules to DCS World. The Nike Hercules is a command-guided, long-range, high-altitude anti-aircraft missile operated from the late 1950s to late 1980s.

## Install
Extract the Nike_Hercules file into **C:\Username\Saved Games\DCS\Mods\tech**


## Equipment Overview
![System Overview](https://nikemissile.org/herc_system/page4.jpg)
### MIM-14B/C

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

The primary function of the HIPAR system is to locate, interrogate, and designate, to the target track radar (TTR), targets in the area defended by the improved Hercules system. The HIPAR system can detect aircraft and tactical ballistic missile targets.

**Perormance Specs:**
- Vertical Coverage: 0 to 60 deg., 151,000ft, 46km altitude
- Horizonal Coverage: 350,000 yards (172nmi, 320km) range
- Antenna Speed: 6.6 and 10 RPM 

**Mod Simplifications:**
-- Antenna Speed: 7.5 RPM


### LOPAR (low power acquisition radar)


**Mod Simplifications:**
-- Antenna Speed: 10 RPM



### MTR/TTR (Missile Tracking Radar/Target Tracking Radar)


### TRR (Target Ranging Radar)


### Other Buildings
Interconnection Building
Power Building
Elevation Tower


## References
- https://nikemissile.org/
- https://ed-thelen.org/

## DCS-isms
Radar frequencies (for opposing AGM-45 settings)
- HIPAR: 2.85e9 to 3.2e9
- LOPAR: 4910.0e6, 5090.0e6

## Missing features
- Nuclear warhead (currently using a rough approximation of the conventional warhead)
- Refined missile performance (missile may be overperforming, likely having too little drag)
- Detailed Textures (very basic textures currently present)
- Animated Launcher (currently a static object with missile in upright position as if on alert)

--Nike Hercules Mod
--by SirPueo
--v0.1.0

declare_plugin("Nike_Hercules",
{
installed 	 	  = true,
displayName   = _("Nike Hercules"),
shortName	  =   "NikeHercules",
state		 	  = "installed",
developerName	  = "Sir Pueo",
version		 	  = "0.1.0",	
info		  =    _("Adds the Nike Hercules System and various accompanying structures"),	 
--encyclopedia_path = current_mod_path .. '/Encyclopedia', --WIP
})

mount_vfs_liveries_path (current_mod_path ..  "/Liveries")
mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures")

local function vehicle_file(f)
	if dofile(current_mod_path..f) then
		error("can't load file "..f)
		return
	end
	if(GT) then
		GT.shape_table_data = 
		{
			{
				file  	    = GT.visual.shape;
				username    = GT.Name;
				desrt       = GT.visual.shape_dstr;
			    classname 	= "lLandVehicle";
				positioning = "BYNORMAL";
				life		= GT.life or 5;
			},
			{
				name  = GT.visual.shape_dstr;
				file  = GT.visual.shape_dstr;
			},
		}
		add_surface_unit(GT)
		GT = nil;
	else
		error("GT empty in file "..f)
	end;
end

local function weapon_file(f)
	if dofile(current_mod_path..f) then
		error("can't load file "..f)
		return
	end
end

--Sensors
dofile(current_mod_path.."/Database/Sensors/sensors.lua")
dofile(current_mod_path.."/Database/Structures/Objects.lua")


-- Weapon file
weapon_file("/Database/Weapon/MIM14B.lua")
weapon_file("/Database/Weapon/MIM14B_GER.lua")
weapon_file("/Database/Weapon/MIM14C.lua")
weapon_file("/Database/Weapon/MIM14C_NL.lua")
--weapon_file("/Database/Weapon/MIM14_Nuc.lua")  -- WIP

--Support Equipment
vehicle_file("/Database/Vehicle/BCT.lua") 
vehicle_file("/Database/Vehicle/RCT.lua") 
vehicle_file("/Database/Vehicle/LCT.lua") 
vehicle_file("/Database/Vehicle/radar/MTR.lua")
vehicle_file("/Database/Vehicle/radar/TTR.lua") 
vehicle_file("/Database/Vehicle/radar/TRR.lua") 
vehicle_file("/Database/Vehicle/radar/HIPAR.lua") 
vehicle_file("/Database/Vehicle/radar/LOPAR.lua") 
vehicle_file("/Database/Vehicle/Single_LN_B.lua")
vehicle_file("/Database/Vehicle/Single_LN_B_GER.lua")
vehicle_file("/Database/Vehicle/Single_LN_C.lua")
vehicle_file("/Database/Vehicle/Single_LN_C_NL.lua")
--vehicle_file("/Database/Vehicle/Single_LN_Nuc.lua") -- WIP
vehicle_file("/Database/Vehicle/PowerBldg.lua")
vehicle_file("/Database/Vehicle/InterconnBldg.lua")

plugin_done()

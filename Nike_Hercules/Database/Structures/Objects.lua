mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures")

local function add_structure(f)
	if(f) then
		f.shape_table_data = 
		{
			{
				file  	    = f.ShapeName,
				life		= f.Life,
				username    = f.Name,
				desrt       = f.ShapeNameDestr or "self",
			    classname 	= f.classname   or "lLandVehicle",
				positioning = f.positioning or "BYNORMAL" -- {"BYNORMAL", "ONLYHEIGTH", "BY_XZ", "ADD_HEIGTH"}
			}
		}
		if f.ShapeNameDestr then
			f.shape_table_data[#f.shape_table_data + 1] = 
			{
				name  = f.ShapeNameDestr,
				file  = f.ShapeNameDestr,	
			}
		end
		
		
		f.mapclasskey = MapClassKey or "P0091000076";
		f.attribute = {wsType_Static, wsType_Standing}
		
		add_surface_unit(f)
		GT = nil;
	else
		error("Can't add structure")
	end;
end


add_structure({
Name 		 =  "ExtensionTower",
DisplayName  = _("Extension Tower"),
ShapeName	 =   "ExtensionTower",
ShapeNameDestr = "ExtensionTower",
Life		 =  10,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})


add_structure({
Name 		 =  "LNConnectionRail",
DisplayName  = _("LN Connection Rail"),
ShapeName	 =   "LNConnRail",
ShapeNameDestr = "LNConnRail",
Life		 =  10,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
})